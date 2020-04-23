String prettyTime(String time) {
if (time == null) return '';
var now = new DateTime.now();
var releasedDate = DateTime.parse(time);
var difference = now.difference(releasedDate);
var seconds = difference.inSeconds;
var minutes = difference.inMinutes;
var hours = difference.inHours;
var days = difference.inDays;
var years = (difference.inDays / 365).round();

return templates['prefix'] + (
seconds < 45 ? template('seconds', seconds)
: seconds < 90 ? template('minute', 1)
: minutes < 45 ? template('minutes', minutes)
: minutes < 90 ? template('hour', 1)
: hours < 24 ? template('hours', hours)
: hours < 42 ? template('day', 1)
: days < 30 ? template('days', days)
: days < 45 ? template('month', 1)
: days < 365 ? template('months', (days / 30).round())
: years < 1.5 ? template('year', 1)
: template('years', years))
+ templates['suffix'];
}

var templates = {
  'prefix': '',
  'suffix': ' önce',
  'seconds': 'saniyeler',
  'minute': '1 dakika',
  'minutes': '%d dakika',
  'hour': '1 saat',
  'hours': '%d saat',
  'day': '1 gün',
  'days': '%d gün',
  'month': '1 ay',
  'months': '%d ay',
  'year': '1 yıl',
  'years': '%d yıl'
};

template(String t, int n) {
 return templates[t].replaceAll(new RegExp(r'%d'), n.round().abs().toString());
}
