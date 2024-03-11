# Sentinel Module Documentation: Timely Module

This module provides a function to retrieve the current datetime.

## Functions

### `getDatetime()`

This function returns the current datetime.

#### Returns

- Type: `time.Time`
- Description: The current datetime.

#### Example

```python
import "time"

datetime = getDatetime()
```

## Usage

To use this module, import it into your Sentinel policy:

```python
import "timely"

day = timely.datetime.day
```
