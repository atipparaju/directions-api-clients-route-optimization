# coding: utf-8

"""
Copyright 2015 SmartBear Software

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

    Ref: https://github.com/swagger-api/swagger-codegen
"""

from pprint import pformat
from six import iteritems


class Break(object):
    """
    NOTE: This class is auto generated by the swagger code generator program.
    Do not edit the class manually.
    """
    def __init__(self):
        """
        Break - a model defined in Swagger

        :param dict swaggerTypes: The key is attribute name
                                  and the value is attribute type.
        :param dict attributeMap: The key is attribute name
                                  and the value is json key in definition.
        """
        self.swagger_types = {
            'earliest': 'int',
            'latest': 'int',
            'duration': 'int'
        }

        self.attribute_map = {
            'earliest': 'earliest',
            'latest': 'latest',
            'duration': 'duration'
        }

        self._earliest = None
        self._latest = None
        self._duration = None

    @property
    def earliest(self):
        """
        Gets the earliest of this Break.
        earliest start of break

        :return: The earliest of this Break.
        :rtype: int
        """
        return self._earliest

    @earliest.setter
    def earliest(self, earliest):
        """
        Sets the earliest of this Break.
        earliest start of break

        :param earliest: The earliest of this Break.
        :type: int
        """
        self._earliest = earliest

    @property
    def latest(self):
        """
        Gets the latest of this Break.
        latest start of break

        :return: The latest of this Break.
        :rtype: int
        """
        return self._latest

    @latest.setter
    def latest(self, latest):
        """
        Sets the latest of this Break.
        latest start of break

        :param latest: The latest of this Break.
        :type: int
        """
        self._latest = latest

    @property
    def duration(self):
        """
        Gets the duration of this Break.
        duration of break

        :return: The duration of this Break.
        :rtype: int
        """
        return self._duration

    @duration.setter
    def duration(self, duration):
        """
        Sets the duration of this Break.
        duration of break

        :param duration: The duration of this Break.
        :type: int
        """
        self._duration = duration

    def to_dict(self):
        """
        Returns the model properties as a dict
        """
        result = {}

        for attr, _ in iteritems(self.swagger_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            else:
                result[attr] = value

        return result

    def to_str(self):
        """
        Returns the string representation of the model
        """
        return pformat(self.to_dict())

    def __repr__(self):
        """
        For `print` and `pprint`
        """
        return self.to_str()

    def __eq__(self, other): 
        """
        Returns true if both objects are equal
        """
        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """ 
        Returns true if both objects are not equal
        """
        return not self == other

