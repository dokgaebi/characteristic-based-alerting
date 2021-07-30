# characteristic-based-alerting

Characteristic Based Alerting

Requirements
•	High sensitivity alerting to detect subtle attack techniques
•	Low false positive alert creation
•	Rules specific to individual devices for more accurate base lining

Premise
•	Specific attack tactics and techniques will cause a detectable characteristic.  These characteristics can be detected through targeted specific detection rules that baseline normal usage and detect outliers.
•	The detection of a single outlier may be a false positive but the detection of two or more characteristics for a single tactic or technique on a single device is more likely to be a true positive.

Solution
•	Detections based on attack tactic characteristics. 
•	Alerts requiring 2 or more characteristics detections per tactic/technique per device.
•	Characteristic detections are grouped by attack technique or tactic.  This enables greater confidence in alert generation by requiring more than one type of characteristic per tactic per host.  


