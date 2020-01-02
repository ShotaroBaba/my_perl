# Declare dictionary type

sub generate_stopwords {
    my %smart_stop_words;
    $smart_stop_words{"#"}=1;
    $smart_stop_words{"a"}=1;
    $smart_stop_words{"a's"}=1;
    $smart_stop_words{"able"}=1;
    $smart_stop_words{"about"}=1;
    $smart_stop_words{"above"}=1;
    $smart_stop_words{"according"}=1;
    $smart_stop_words{"accordingly"}=1;
    $smart_stop_words{"across"}=1;
    $smart_stop_words{"actually"}=1;
    $smart_stop_words{"after"}=1;
    $smart_stop_words{"afterwards"}=1;
    $smart_stop_words{"again"}=1;
    $smart_stop_words{"against"}=1;
    $smart_stop_words{"ain't"}=1;
    $smart_stop_words{"all"}=1;
    $smart_stop_words{"allow"}=1;
    $smart_stop_words{"allows"}=1;
    $smart_stop_words{"almost"}=1;
    $smart_stop_words{"alone"}=1;
    $smart_stop_words{"along"}=1;
    $smart_stop_words{"already"}=1;
    $smart_stop_words{"also"}=1;
    $smart_stop_words{"although"}=1;
    $smart_stop_words{"always"}=1;
    $smart_stop_words{"am"}=1;
    $smart_stop_words{"among"}=1;
    $smart_stop_words{"amongst"}=1;
    $smart_stop_words{"an"}=1;
    $smart_stop_words{"and"}=1;
    $smart_stop_words{"another"}=1;
    $smart_stop_words{"any"}=1;
    $smart_stop_words{"anybody"}=1;
    $smart_stop_words{"anyhow"}=1;
    $smart_stop_words{"anyone"}=1;
    $smart_stop_words{"anything"}=1;
    $smart_stop_words{"anyway"}=1;
    $smart_stop_words{"anyways"}=1;
    $smart_stop_words{"anywhere"}=1;
    $smart_stop_words{"apart"}=1;
    $smart_stop_words{"appear"}=1;
    $smart_stop_words{"appreciate"}=1;
    $smart_stop_words{"appropriate"}=1;
    $smart_stop_words{"are"}=1;
    $smart_stop_words{"aren't"}=1;
    $smart_stop_words{"around"}=1;
    $smart_stop_words{"as"}=1;
    $smart_stop_words{"aside"}=1;
    $smart_stop_words{"ask"}=1;
    $smart_stop_words{"asking"}=1;
    $smart_stop_words{"associated"}=1;
    $smart_stop_words{"at"}=1;
    $smart_stop_words{"available"}=1;
    $smart_stop_words{"away"}=1;
    $smart_stop_words{"awfully"}=1;
    $smart_stop_words{"b"}=1;
    $smart_stop_words{"be"}=1;
    $smart_stop_words{"became"}=1;
    $smart_stop_words{"because"}=1;
    $smart_stop_words{"become"}=1;
    $smart_stop_words{"becomes"}=1;
    $smart_stop_words{"becoming"}=1;
    $smart_stop_words{"been"}=1;
    $smart_stop_words{"before"}=1;
    $smart_stop_words{"beforehand"}=1;
    $smart_stop_words{"behind"}=1;
    $smart_stop_words{"being"}=1;
    $smart_stop_words{"believe"}=1;
    $smart_stop_words{"below"}=1;
    $smart_stop_words{"beside"}=1;
    $smart_stop_words{"besides"}=1;
    $smart_stop_words{"best"}=1;
    $smart_stop_words{"better"}=1;
    $smart_stop_words{"between"}=1;
    $smart_stop_words{"beyond"}=1;
    $smart_stop_words{"both"}=1;
    $smart_stop_words{"brief"}=1;
    $smart_stop_words{"but"}=1;
    $smart_stop_words{"by"}=1;
    $smart_stop_words{"c"}=1;
    $smart_stop_words{"c'mon"}=1;
    $smart_stop_words{"c's"}=1;
    $smart_stop_words{"came"}=1;
    $smart_stop_words{"can"}=1;
    $smart_stop_words{"can't"}=1;
    $smart_stop_words{"cannot"}=1;
    $smart_stop_words{"cant"}=1;
    $smart_stop_words{"cause"}=1;
    $smart_stop_words{"causes"}=1;
    $smart_stop_words{"certain"}=1;
    $smart_stop_words{"certainly"}=1;
    $smart_stop_words{"changes"}=1;
    $smart_stop_words{"clearly"}=1;
    $smart_stop_words{"co"}=1;
    $smart_stop_words{"com"}=1;
    $smart_stop_words{"come"}=1;
    $smart_stop_words{"comes"}=1;
    $smart_stop_words{"concerning"}=1;
    $smart_stop_words{"consequently"}=1;
    $smart_stop_words{"consider"}=1;
    $smart_stop_words{"considering"}=1;
    $smart_stop_words{"contain"}=1;
    $smart_stop_words{"containing"}=1;
    $smart_stop_words{"contains"}=1;
    $smart_stop_words{"corresponding"}=1;
    $smart_stop_words{"could"}=1;
    $smart_stop_words{"couldn't"}=1;
    $smart_stop_words{"course"}=1;
    $smart_stop_words{"currently"}=1;
    $smart_stop_words{"d"}=1;
    $smart_stop_words{"definitely"}=1;
    $smart_stop_words{"described"}=1;
    $smart_stop_words{"despite"}=1;
    $smart_stop_words{"did"}=1;
    $smart_stop_words{"didn't"}=1;
    $smart_stop_words{"different"}=1;
    $smart_stop_words{"do"}=1;
    $smart_stop_words{"does"}=1;
    $smart_stop_words{"doesn't"}=1;
    $smart_stop_words{"doing"}=1;
    $smart_stop_words{"don't"}=1;
    $smart_stop_words{"done"}=1;
    $smart_stop_words{"down"}=1;
    $smart_stop_words{"downwards"}=1;
    $smart_stop_words{"during"}=1;
    $smart_stop_words{"e"}=1;
    $smart_stop_words{"each"}=1;
    $smart_stop_words{"edu"}=1;
    $smart_stop_words{"eg"}=1;
    $smart_stop_words{"eight"}=1;
    $smart_stop_words{"either"}=1;
    $smart_stop_words{"else"}=1;
    $smart_stop_words{"elsewhere"}=1;
    $smart_stop_words{"enough"}=1;
    $smart_stop_words{"entirely"}=1;
    $smart_stop_words{"especially"}=1;
    $smart_stop_words{"et"}=1;
    $smart_stop_words{"etc"}=1;
    $smart_stop_words{"even"}=1;
    $smart_stop_words{"ever"}=1;
    $smart_stop_words{"every"}=1;
    $smart_stop_words{"everybody"}=1;
    $smart_stop_words{"everyone"}=1;
    $smart_stop_words{"everything"}=1;
    $smart_stop_words{"everywhere"}=1;
    $smart_stop_words{"ex"}=1;
    $smart_stop_words{"exactly"}=1;
    $smart_stop_words{"example"}=1;
    $smart_stop_words{"except"}=1;
    $smart_stop_words{"f"}=1;
    $smart_stop_words{"far"}=1;
    $smart_stop_words{"few"}=1;
    $smart_stop_words{"fifth"}=1;
    $smart_stop_words{"first"}=1;
    $smart_stop_words{"five"}=1;
    $smart_stop_words{"followed"}=1;
    $smart_stop_words{"following"}=1;
    $smart_stop_words{"follows"}=1;
    $smart_stop_words{"for"}=1;
    $smart_stop_words{"former"}=1;
    $smart_stop_words{"formerly"}=1;
    $smart_stop_words{"forth"}=1;
    $smart_stop_words{"four"}=1;
    $smart_stop_words{"from"}=1;
    $smart_stop_words{"further"}=1;
    $smart_stop_words{"furthermore"}=1;
    $smart_stop_words{"g"}=1;
    $smart_stop_words{"get"}=1;
    $smart_stop_words{"gets"}=1;
    $smart_stop_words{"getting"}=1;
    $smart_stop_words{"given"}=1;
    $smart_stop_words{"gives"}=1;
    $smart_stop_words{"go"}=1;
    $smart_stop_words{"goes"}=1;
    $smart_stop_words{"going"}=1;
    $smart_stop_words{"gone"}=1;
    $smart_stop_words{"got"}=1;
    $smart_stop_words{"gotten"}=1;
    $smart_stop_words{"greetings"}=1;
    $smart_stop_words{"h"}=1;
    $smart_stop_words{"had"}=1;
    $smart_stop_words{"hadn't"}=1;
    $smart_stop_words{"happens"}=1;
    $smart_stop_words{"hardly"}=1;
    $smart_stop_words{"has"}=1;
    $smart_stop_words{"hasn't"}=1;
    $smart_stop_words{"have"}=1;
    $smart_stop_words{"haven't"}=1;
    $smart_stop_words{"having"}=1;
    $smart_stop_words{"he"}=1;
    $smart_stop_words{"he's"}=1;
    $smart_stop_words{"hello"}=1;
    $smart_stop_words{"help"}=1;
    $smart_stop_words{"hence"}=1;
    $smart_stop_words{"her"}=1;
    $smart_stop_words{"here"}=1;
    $smart_stop_words{"here's"}=1;
    $smart_stop_words{"hereafter"}=1;
    $smart_stop_words{"hereby"}=1;
    $smart_stop_words{"herein"}=1;
    $smart_stop_words{"hereupon"}=1;
    $smart_stop_words{"hers"}=1;
    $smart_stop_words{"herself"}=1;
    $smart_stop_words{"hi"}=1;
    $smart_stop_words{"him"}=1;
    $smart_stop_words{"himself"}=1;
    $smart_stop_words{"his"}=1;
    $smart_stop_words{"hither"}=1;
    $smart_stop_words{"hopefully"}=1;
    $smart_stop_words{"how"}=1;
    $smart_stop_words{"howbeit"}=1;
    $smart_stop_words{"however"}=1;
    $smart_stop_words{"i"}=1;
    $smart_stop_words{"i'd"}=1;
    $smart_stop_words{"i'll"}=1;
    $smart_stop_words{"i'm"}=1;
    $smart_stop_words{"i've"}=1;
    $smart_stop_words{"ie"}=1;
    $smart_stop_words{"if"}=1;
    $smart_stop_words{"ignored"}=1;
    $smart_stop_words{"immediate"}=1;
    $smart_stop_words{"in"}=1;
    $smart_stop_words{"inasmuch"}=1;
    $smart_stop_words{"inc"}=1;
    $smart_stop_words{"indeed"}=1;
    $smart_stop_words{"indicate"}=1;
    $smart_stop_words{"indicated"}=1;
    $smart_stop_words{"indicates"}=1;
    $smart_stop_words{"inner"}=1;
    $smart_stop_words{"insofar"}=1;
    $smart_stop_words{"instead"}=1;
    $smart_stop_words{"into"}=1;
    $smart_stop_words{"inward"}=1;
    $smart_stop_words{"is"}=1;
    $smart_stop_words{"isn't"}=1;
    $smart_stop_words{"it"}=1;
    $smart_stop_words{"it'd"}=1;
    $smart_stop_words{"it'll"}=1;
    $smart_stop_words{"it's"}=1;
    $smart_stop_words{"its"}=1;
    $smart_stop_words{"itself"}=1;
    $smart_stop_words{"j"}=1;
    $smart_stop_words{"just"}=1;
    $smart_stop_words{"k"}=1;
    $smart_stop_words{"keep"}=1;
    $smart_stop_words{"keeps"}=1;
    $smart_stop_words{"kept"}=1;
    $smart_stop_words{"know"}=1;
    $smart_stop_words{"knows"}=1;
    $smart_stop_words{"known"}=1;
    $smart_stop_words{"l"}=1;
    $smart_stop_words{"last"}=1;
    $smart_stop_words{"lately"}=1;
    $smart_stop_words{"later"}=1;
    $smart_stop_words{"latter"}=1;
    $smart_stop_words{"latterly"}=1;
    $smart_stop_words{"least"}=1;
    $smart_stop_words{"less"}=1;
    $smart_stop_words{"lest"}=1;
    $smart_stop_words{"let"}=1;
    $smart_stop_words{"let's"}=1;
    $smart_stop_words{"like"}=1;
    $smart_stop_words{"liked"}=1;
    $smart_stop_words{"likely"}=1;
    $smart_stop_words{"little"}=1;
    $smart_stop_words{"look"}=1;
    $smart_stop_words{"looking"}=1;
    $smart_stop_words{"looks"}=1;
    $smart_stop_words{"ltd"}=1;
    $smart_stop_words{"m"}=1;
    $smart_stop_words{"mainly"}=1;
    $smart_stop_words{"many"}=1;
    $smart_stop_words{"may"}=1;
    $smart_stop_words{"maybe"}=1;
    $smart_stop_words{"me"}=1;
    $smart_stop_words{"mean"}=1;
    $smart_stop_words{"meanwhile"}=1;
    $smart_stop_words{"merely"}=1;
    $smart_stop_words{"might"}=1;
    $smart_stop_words{"more"}=1;
    $smart_stop_words{"moreover"}=1;
    $smart_stop_words{"most"}=1;
    $smart_stop_words{"mostly"}=1;
    $smart_stop_words{"much"}=1;
    $smart_stop_words{"must"}=1;
    $smart_stop_words{"my"}=1;
    $smart_stop_words{"myself"}=1;
    $smart_stop_words{"n"}=1;
    $smart_stop_words{"name"}=1;
    $smart_stop_words{"namely"}=1;
    $smart_stop_words{"nd"}=1;
    $smart_stop_words{"near"}=1;
    $smart_stop_words{"nearly"}=1;
    $smart_stop_words{"necessary"}=1;
    $smart_stop_words{"need"}=1;
    $smart_stop_words{"needs"}=1;
    $smart_stop_words{"neither"}=1;
    $smart_stop_words{"never"}=1;
    $smart_stop_words{"nevertheless"}=1;
    $smart_stop_words{"new"}=1;
    $smart_stop_words{"next"}=1;
    $smart_stop_words{"nine"}=1;
    $smart_stop_words{"no"}=1;
    $smart_stop_words{"nobody"}=1;
    $smart_stop_words{"non"}=1;
    $smart_stop_words{"none"}=1;
    $smart_stop_words{"noone"}=1;
    $smart_stop_words{"nor"}=1;
    $smart_stop_words{"normally"}=1;
    $smart_stop_words{"not"}=1;
    $smart_stop_words{"nothing"}=1;
    $smart_stop_words{"novel"}=1;
    $smart_stop_words{"now"}=1;
    $smart_stop_words{"nowhere"}=1;
    $smart_stop_words{"o"}=1;
    $smart_stop_words{"obviously"}=1;
    $smart_stop_words{"of"}=1;
    $smart_stop_words{"off"}=1;
    $smart_stop_words{"often"}=1;
    $smart_stop_words{"oh"}=1;
    $smart_stop_words{"ok"}=1;
    $smart_stop_words{"okay"}=1;
    $smart_stop_words{"old"}=1;
    $smart_stop_words{"on"}=1;
    $smart_stop_words{"once"}=1;
    $smart_stop_words{"one"}=1;
    $smart_stop_words{"ones"}=1;
    $smart_stop_words{"only"}=1;
    $smart_stop_words{"onto"}=1;
    $smart_stop_words{"or"}=1;
    $smart_stop_words{"other"}=1;
    $smart_stop_words{"others"}=1;
    $smart_stop_words{"otherwise"}=1;
    $smart_stop_words{"ought"}=1;
    $smart_stop_words{"our"}=1;
    $smart_stop_words{"ours"}=1;
    $smart_stop_words{"ourselves"}=1;
    $smart_stop_words{"out"}=1;
    $smart_stop_words{"outside"}=1;
    $smart_stop_words{"over"}=1;
    $smart_stop_words{"overall"}=1;
    $smart_stop_words{"own"}=1;
    $smart_stop_words{"p"}=1;
    $smart_stop_words{"particular"}=1;
    $smart_stop_words{"particularly"}=1;
    $smart_stop_words{"per"}=1;
    $smart_stop_words{"perhaps"}=1;
    $smart_stop_words{"placed"}=1;
    $smart_stop_words{"please"}=1;
    $smart_stop_words{"plus"}=1;
    $smart_stop_words{"possible"}=1;
    $smart_stop_words{"presumably"}=1;
    $smart_stop_words{"probably"}=1;
    $smart_stop_words{"provides"}=1;
    $smart_stop_words{"q"}=1;
    $smart_stop_words{"que"}=1;
    $smart_stop_words{"quite"}=1;
    $smart_stop_words{"qv"}=1;
    $smart_stop_words{"r"}=1;
    $smart_stop_words{"rather"}=1;
    $smart_stop_words{"rd"}=1;
    $smart_stop_words{"re"}=1;
    $smart_stop_words{"really"}=1;
    $smart_stop_words{"reasonably"}=1;
    $smart_stop_words{"regarding"}=1;
    $smart_stop_words{"regardless"}=1;
    $smart_stop_words{"regards"}=1;
    $smart_stop_words{"relatively"}=1;
    $smart_stop_words{"respectively"}=1;
    $smart_stop_words{"right"}=1;
    $smart_stop_words{"s"}=1;
    $smart_stop_words{"said"}=1;
    $smart_stop_words{"same"}=1;
    $smart_stop_words{"saw"}=1;
    $smart_stop_words{"say"}=1;
    $smart_stop_words{"saying"}=1;
    $smart_stop_words{"says"}=1;
    $smart_stop_words{"second"}=1;
    $smart_stop_words{"secondly"}=1;
    $smart_stop_words{"see"}=1;
    $smart_stop_words{"seeing"}=1;
    $smart_stop_words{"seem"}=1;
    $smart_stop_words{"seemed"}=1;
    $smart_stop_words{"seeming"}=1;
    $smart_stop_words{"seems"}=1;
    $smart_stop_words{"seen"}=1;
    $smart_stop_words{"self"}=1;
    $smart_stop_words{"selves"}=1;
    $smart_stop_words{"sensible"}=1;
    $smart_stop_words{"sent"}=1;
    $smart_stop_words{"serious"}=1;
    $smart_stop_words{"seriously"}=1;
    $smart_stop_words{"seven"}=1;
    $smart_stop_words{"several"}=1;
    $smart_stop_words{"shall"}=1;
    $smart_stop_words{"she"}=1;
    $smart_stop_words{"should"}=1;
    $smart_stop_words{"shouldn't"}=1;
    $smart_stop_words{"since"}=1;
    $smart_stop_words{"six"}=1;
    $smart_stop_words{"so"}=1;
    $smart_stop_words{"some"}=1;
    $smart_stop_words{"somebody"}=1;
    $smart_stop_words{"somehow"}=1;
    $smart_stop_words{"someone"}=1;
    $smart_stop_words{"something"}=1;
    $smart_stop_words{"sometime"}=1;
    $smart_stop_words{"sometimes"}=1;
    $smart_stop_words{"somewhat"}=1;
    $smart_stop_words{"somewhere"}=1;
    $smart_stop_words{"soon"}=1;
    $smart_stop_words{"sorry"}=1;
    $smart_stop_words{"specified"}=1;
    $smart_stop_words{"specify"}=1;
    $smart_stop_words{"specifying"}=1;
    $smart_stop_words{"still"}=1;
    $smart_stop_words{"sub"}=1;
    $smart_stop_words{"such"}=1;
    $smart_stop_words{"sup"}=1;
    $smart_stop_words{"sure"}=1;
    $smart_stop_words{"t"}=1;
    $smart_stop_words{"t's"}=1;
    $smart_stop_words{"take"}=1;
    $smart_stop_words{"taken"}=1;
    $smart_stop_words{"tell"}=1;
    $smart_stop_words{"tends"}=1;
    $smart_stop_words{"th"}=1;
    $smart_stop_words{"than"}=1;
    $smart_stop_words{"thank"}=1;
    $smart_stop_words{"thanks"}=1;
    $smart_stop_words{"thanx"}=1;
    $smart_stop_words{"that"}=1;
    $smart_stop_words{"that's"}=1;
    $smart_stop_words{"thats"}=1;
    $smart_stop_words{"the"}=1;
    $smart_stop_words{"their"}=1;
    $smart_stop_words{"theirs"}=1;
    $smart_stop_words{"them"}=1;
    $smart_stop_words{"themselves"}=1;
    $smart_stop_words{"then"}=1;
    $smart_stop_words{"thence"}=1;
    $smart_stop_words{"there"}=1;
    $smart_stop_words{"there's"}=1;
    $smart_stop_words{"thereafter"}=1;
    $smart_stop_words{"thereby"}=1;
    $smart_stop_words{"therefore"}=1;
    $smart_stop_words{"therein"}=1;
    $smart_stop_words{"theres"}=1;
    $smart_stop_words{"thereupon"}=1;
    $smart_stop_words{"these"}=1;
    $smart_stop_words{"they"}=1;
    $smart_stop_words{"they'd"}=1;
    $smart_stop_words{"they'll"}=1;
    $smart_stop_words{"they're"}=1;
    $smart_stop_words{"they've"}=1;
    $smart_stop_words{"think"}=1;
    $smart_stop_words{"third"}=1;
    $smart_stop_words{"this"}=1;
    $smart_stop_words{"thorough"}=1;
    $smart_stop_words{"thoroughly"}=1;
    $smart_stop_words{"those"}=1;
    $smart_stop_words{"though"}=1;
    $smart_stop_words{"three"}=1;
    $smart_stop_words{"through"}=1;
    $smart_stop_words{"throughout"}=1;
    $smart_stop_words{"thru"}=1;
    $smart_stop_words{"thus"}=1;
    $smart_stop_words{"to"}=1;
    $smart_stop_words{"together"}=1;
    $smart_stop_words{"too"}=1;
    $smart_stop_words{"took"}=1;
    $smart_stop_words{"toward"}=1;
    $smart_stop_words{"towards"}=1;
    $smart_stop_words{"tried"}=1;
    $smart_stop_words{"tries"}=1;
    $smart_stop_words{"truly"}=1;
    $smart_stop_words{"try"}=1;
    $smart_stop_words{"trying"}=1;
    $smart_stop_words{"twice"}=1;
    $smart_stop_words{"two"}=1;
    $smart_stop_words{"u"}=1;
    $smart_stop_words{"un"}=1;
    $smart_stop_words{"under"}=1;
    $smart_stop_words{"unfortunately"}=1;
    $smart_stop_words{"unless"}=1;
    $smart_stop_words{"unlikely"}=1;
    $smart_stop_words{"until"}=1;
    $smart_stop_words{"unto"}=1;
    $smart_stop_words{"up"}=1;
    $smart_stop_words{"upon"}=1;
    $smart_stop_words{"us"}=1;
    $smart_stop_words{"use"}=1;
    $smart_stop_words{"used"}=1;
    $smart_stop_words{"useful"}=1;
    $smart_stop_words{"uses"}=1;
    $smart_stop_words{"using"}=1;
    $smart_stop_words{"usually"}=1;
    $smart_stop_words{"uucp"}=1;
    $smart_stop_words{"v"}=1;
    $smart_stop_words{"value"}=1;
    $smart_stop_words{"various"}=1;
    $smart_stop_words{"very"}=1;
    $smart_stop_words{"via"}=1;
    $smart_stop_words{"viz"}=1;
    $smart_stop_words{"vs"}=1;
    $smart_stop_words{"w"}=1;
    $smart_stop_words{"want"}=1;
    $smart_stop_words{"wants"}=1;
    $smart_stop_words{"was"}=1;
    $smart_stop_words{"wasn't"}=1;
    $smart_stop_words{"way"}=1;
    $smart_stop_words{"we"}=1;
    $smart_stop_words{"we'd"}=1;
    $smart_stop_words{"we'll"}=1;
    $smart_stop_words{"we're"}=1;
    $smart_stop_words{"we've"}=1;
    $smart_stop_words{"welcome"}=1;
    $smart_stop_words{"well"}=1;
    $smart_stop_words{"went"}=1;
    $smart_stop_words{"were"}=1;
    $smart_stop_words{"weren't"}=1;
    $smart_stop_words{"what"}=1;
    $smart_stop_words{"what's"}=1;
    $smart_stop_words{"whatever"}=1;
    $smart_stop_words{"when"}=1;
    $smart_stop_words{"whence"}=1;
    $smart_stop_words{"whenever"}=1;
    $smart_stop_words{"where"}=1;
    $smart_stop_words{"where's"}=1;
    $smart_stop_words{"whereafter"}=1;
    $smart_stop_words{"whereas"}=1;
    $smart_stop_words{"whereby"}=1;
    $smart_stop_words{"wherein"}=1;
    $smart_stop_words{"whereupon"}=1;
    $smart_stop_words{"wherever"}=1;
    $smart_stop_words{"whether"}=1;
    $smart_stop_words{"which"}=1;
    $smart_stop_words{"while"}=1;
    $smart_stop_words{"whither"}=1;
    $smart_stop_words{"who"}=1;
    $smart_stop_words{"who's"}=1;
    $smart_stop_words{"whoever"}=1;
    $smart_stop_words{"whole"}=1;
    $smart_stop_words{"whom"}=1;
    $smart_stop_words{"whose"}=1;
    $smart_stop_words{"why"}=1;
    $smart_stop_words{"will"}=1;
    $smart_stop_words{"willing"}=1;
    $smart_stop_words{"wish"}=1;
    $smart_stop_words{"with"}=1;
    $smart_stop_words{"within"}=1;
    $smart_stop_words{"without"}=1;
    $smart_stop_words{"won't"}=1;
    $smart_stop_words{"wonder"}=1;
    $smart_stop_words{"would"}=1;
    $smart_stop_words{"would"}=1;
    $smart_stop_words{"wouldn't"}=1;
    $smart_stop_words{"x"}=1;
    $smart_stop_words{"y"}=1;
    $smart_stop_words{"yes"}=1;
    $smart_stop_words{"yet"}=1;
    $smart_stop_words{"you"}=1;
    $smart_stop_words{"you'd"}=1;
    $smart_stop_words{"you'll"}=1;
    $smart_stop_words{"you're"}=1;
    $smart_stop_words{"you've"}=1;
    $smart_stop_words{"your"}=1;
    $smart_stop_words{"yours"}=1;
    $smart_stop_words{"yourself"}=1;
    $smart_stop_words{"yourselves"}=1;
    $smart_stop_words{"z"}=1;
    $smart_stop_words{"zero"}=1;

    return %smart_stop_words;
}
1