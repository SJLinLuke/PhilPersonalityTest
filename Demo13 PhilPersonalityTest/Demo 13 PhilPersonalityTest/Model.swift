//
//  Question.swift
//  Demo 13 PhilPersonalityTest
//
//  Created by LukeLin on 2022/2/14.
//

import Foundation

struct Question {
    var questions: String
    var choices: [Choice]
    
    init(question: String, choices: [Choice]) {
        self.questions = question
        self.choices = choices
    }
}
struct Choice {
    let content: [String]
    let score: [Int]
    
    init(content: [String], score: [Int]) {
        self.content = content
        self.score = score
    }
}

struct Personality {
    let name: String
    let description: String
    
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}

var Questions = [Question(question: "一天當中，通常什麼時候你的心情是最好的？", choices: [Choice(content: ["早上", "下午及傍晚", "夜裡"], score: [2, 4, 6])]),Question(question: "當你專心在做某件事，但被人打斷了，你通常會怎麼做？", choices: [Choice(content: ["歡迎他，與他對話", "非常厭惡", "在上述兩者之間"], score: [6, 2, 4])]), Question(question: "當你出席公司派對或是朋友KTV聚會等場所，你通常以什麼形式入場？", choices: [Choice(content: ["很大聲入場，引起大家注意", "安靜入場，找你認識的人", "極安靜入場，盡量不引起注意"], score: [6, 4, 2])]), Question(question: "當你坐著休息時，你的姿態通常是？", choices: [Choice(content: ["膝蓋併攏", "雙腿交叉", "雙推伸直", "單腿盤在椅子上"], score: [4, 6, 2, 1])]), Question(question: "當你遇到開心的事情時，你的笑聲通常是？", choices: [Choice(content: ["類似欣賞的大笑", "笑著、聲音不大", "輕聲呵呵笑", "羞怯的微笑"], score: [6, 4, 3, 5])]), Question(question: "你平常走路的速度？", choices: [Choice(content: ["步伐很大、頻率較快", "步伐很小、頻率較快", "走的不快、頭往上看", "走的不快、頭往下看", "很慢"], score: [6, 4, 7, 2, 1])]), Question(question: "和別人交談時，你的姿態通常是？", choices: [Choice(content: ["雙手交疊站立", "雙手緊握", "一支手或雙手放在臀部", "觸碰與你交談的對象", "不自覺摸著耳朵、下巴或是整理頭髮"], score: [4, 2, 5, 7, 6])]), Question(question: "睡覺之前，通常你的床上姿勢為何？", choices: [Choice(content: ["仰躺、伸直", "俯躺、伸直", "側躺、微捲", "頭睡在一側手臂上", "被子蓋過頭"], score: [7, 6, 4, 2, 1])]), Question(question: "做夢時的你，常常遇見什麼？", choices: [Choice(content: ["落下", "打架或掙扎", "找東西找人", "飛或漂浮", "平常不太做夢", "做夢都是愉快的夢"], score: [4, 2, 3, 5, 6, 1])]), Question(question: "下列顏色中，你較喜歡哪色？", choices: [Choice(content: ["紅或橘色", "黑色", "黃色或淺藍色", "綠色", "紫色或深藍色", "白色", "棕色或灰色"], score: [6, 7, 5, 4, 3, 2, 1])])]

var Personalities = [Personality(name: "內向怕生的悲觀者", description: "你屬於那內傾性格，為人比較內向，處事風格有些優柔寡斷，常常害怕犯錯誤，習慣自我反省。社交場所上會很害羞，最害怕麻煩，所以不喜歡參加不必要的活動，也不想認識沒有關係的人。情緒常常處在比較低落的狀態，常常以弟弟、妹妹自稱，希望得到別人的保護與支持。"), Personality(name: "缺乏信心的挑惕者", description: "你擁有近乎強迫症般的追求完美，有些類似於處女座。行事風格屬於謹慎小心型的，在一件事情沒有完全策劃好之前，你是不敢輕易去做的。這也反映了你缺乏自信心的表現，而且對於做事情的過程也很挑剔，不容許自己犯一點點的錯誤。"), Personality(name: "以牙還牙的自我保護者", description: "你的內心有著很強的控制欲望，有著對於周圍的生活環境一貫性理解的強烈需求，當環境有一點風吹草動，你就會非常的敏感。對待朋友非常的忠誠，而且你更渴望對方也能夠同樣的態度來重視你。你最接受不了的是好朋友在背後議論你，這樣會讓你傷心欲絕，並因此產生報復的心理。"), Personality(name: "平衡而中庸", description: "你的性格屬於中和性人格，為人有一定的謙遜姿態，但是同時有自己的主見，能夠理解他人，懂得照顧他人的感受。但同時不容許別人侵犯你，你有著很強的自我控制力，你下決心做的事情，一定會成功。很喜歡交朋友，人際關係處理的不錯，常常是朋友圈裡最值得信賴的人物。"), Personality(name: "吸引人的冒險家", description: "你的性格屬於愛冒險的人，通常大腦的思維非常活躍，喜歡嘗試新鮮的事情，行事風格偏重感性。只要自己覺得可行就會馬上去做，而且通常不計後果。但是往往結果會有很好的驚喜等著你，決策方面果敢而堅決，不會受他人的影響，愛情方面你總能給對方一些驚喜。"), Personality(name: "傲慢的孤獨者", description: "你的性格是桀驁的野心家，從骨子裡透出來的傲氣，揚在眉角自信，很像是天蠍座或獅子座。但是你的性格過於孤傲，行事風格以自我為中心，很難考慮到他人的感受，在朋友間常常會讓人不敢靠近。你的內心有很強的支配慾望與控制慾望，你希望能夠得到很大的權利。")]

