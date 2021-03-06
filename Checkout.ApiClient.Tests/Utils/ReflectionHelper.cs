﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Tests
{
    public class ReflectionHelper
    {
        public static bool CompareProperties(object expectedObj, object actualObj, params string[] ignore)
        {
            List<string> ignoreList = new List<string>(ignore);
            Type type = expectedObj.GetType();

            if (expectedObj != null && actualObj != null)
            {
                foreach (var property in type.GetProperties(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance))
                {
                    if (!ignoreList.Contains(property.Name))
                    {
                        object expectedValue = type.GetProperty(property.Name).GetValue(expectedObj, null);
                        object actualValue = type.GetProperty(property.Name).GetValue(actualObj, null);

                        if (IsComparable(property.PropertyType))
                        {
                            if (!Equals(expectedValue, actualValue))
                            {
                                throw new ArgumentException(string.Format("Property {0}.{1} does not match. Expected: {2} but was: {3}",
                                                                             property.DeclaringType.Name,
                                                                             property.Name,
                                                                             expectedValue,
                                                                             actualValue));
                            }
                        }
                        else if (IsDictionary(property.PropertyType))
                        {
                            CompareDictionariesAreEquals(property,actualValue, expectedValue);
                        }
                        else if (actualValue is IEnumerable)
                        {
                            CompareListsAreEquals(property, (IList)actualValue, (IList)expectedValue);

                        }
                        else if (property.PropertyType.IsClass)
                        {
                            CompareProperties(expectedValue, actualValue);
                        }
                    }
                }

                return true;
            }

            return expectedObj == actualObj;
        }

        private static void CompareDictionariesAreEquals(PropertyInfo property, dynamic expectedObj, dynamic actualObj)
        {
            Type type;

            if ((expectedObj == null) || (actualObj == null)) { throw new ArgumentException("expected or actual object is null"); }
            if (expectedObj.Count != actualObj.Count) { throw new ArgumentException("Dictionary element count doesnt match"); }

            foreach (var kvp in expectedObj)
            {
                type = kvp.Value.GetType();

                if (type.IsPrimitive || type.Equals(typeof(string)))
                {
                    if (!Equals(kvp.Value, actualObj[kvp.Key]))
                    {
                        throw new ArgumentException(string.Format("Property {0}.{1} does not match the element for {2}", property.PropertyType.Name, property.Name, kvp.Value));
                    }
                }
                else
                {
                    if (!CompareProperties(kvp.Value, actualObj[kvp.Key]))
                    {
                        throw new ArgumentException(string.Format("Property {0}.{1} does not match the element for {2}", property.PropertyType.Name, property.Name, kvp.Value));
                    }
                }
            }
        }


        private static void CompareListsAreEquals(PropertyInfo property, IList expectedList, IList actualList)
        {
            if (expectedList.Count != actualList.Count)
            {
                throw new ArgumentException(string.Format("Property {0}.{1} does not match. Expected IList containing {2} elements but was IList containing {3} elements", property.PropertyType.Name, property.Name, expectedList.Count, actualList.Count));
            }

            Type type;

            for (int i = 0; i < actualList.Count; i++)
            {
                if (expectedList[i] == null) { continue; }

                type = expectedList[i].GetType();

                if (type.IsPrimitive || type.Equals(typeof(string)))
                {
                    if (!Equals(expectedList[i], actualList[i]))
                    {
                        throw new ArgumentException(string.Format("Property {0}.{1} does not match. Expected IList with element {1} equals to {2} but was IList with element {1} equals to {3}", property.PropertyType.Name, property.Name, expectedList[i], actualList[i]));
                    }
                }
                else if (!CompareProperties(expectedList[i], actualList[i]))
                {
                    throw new ArgumentException(string.Format("Property {0}.{1} does not match. Expected IList with element {1} equals to {2} but was IList with element {1} equals to {3}", property.PropertyType.Name, property.Name, expectedList[i], actualList[i]));

                }
            }
               
        }

        private static bool IsComparable(Type type)
        {
            return typeof(IComparable).IsAssignableFrom(type) || type.IsPrimitive || type.IsValueType;
        }

        private static bool IsDictionary(Type type)
        {
            //typeof(IComparable).IsAssignableFrom(type) || type.IsPrimitive || type.IsValueType;
            return type.IsGenericType && type.GetGenericTypeDefinition() == typeof(Dictionary<,>);
        }
    }
}
