// #import "@preview/universal-hit-thesis:0.3.0": universal-bachelor // <#用户使用>
// #import "@local/universal-hit-thesis:0.3.0": universal-bachelor // <#本地部署>
#import "../lib.typ": universal-bachelor // <#模板开发>
#import universal-bachelor: *

// 参考 本科毕业论文（设计）书写范例（理工类）.doc 进行编写
// 编译命令  typst compile ./templates/universal-bachelor.typ --root ./
// 实时预览  typst watch ./templates/universal-bachelor.typ --root ./

#show: doc.with(
  thesis-info: (
    // 论文标题，可使用 \n 进行换行
    title-cn: "基于机器视觉的小圆弧零件尺寸测量系统",
    title-en: "DIMENSION MEASUREMENT SYSTEM FOR SMALL ARC PARTS BASED ON MACHINE VISION",
    author: "古翱翔",
    student-id: "2021251124",
    supervisor: "李玉详",
    profession: "光电信息科学与工程",
    collage: "物理与光电工程学院",
    institute: "哈尔滨工程大学",
    // year: 2024,
    // month: 5,
    // day: 1,
  ),

  // 图表选项
  figure-options: (
    // extra-kinds, extra-prefixes 表示需要执行计数器重置和引用的图表类型
    // 参考 https://github.com/RubixDev/typst-i-figured/blob/main/examples/basic.typ
    // 示例：extra-kinds: ("atom",), extra-prefixes: (atom: "atom:")，即新建一个 atom 类型，并使用 @atom: 来引用
    extra-kinds: (), extra-prefixes: (:),
  ),

  // 参考文献配置
  bibliography: bibliography.with(("hit-thesis-ref.bib","my.bib","mylib.bib"), full: true, style: "gb-t-7714-2015-numeric-hit.csl"),

  abstract-cn: [
    随着制造业和精密工程领域的不断发展，对小工件的精确测量需求日益增加。然而，小工件测量一直是一项复杂而具有挑战性的任务，特别是在被测圆弧零件小于整圆的四分之一且弧长小于10mm的情况下。传统测量方法，如使用三坐标测量，通常会受到场地的限制无法测量，或受人为因素影响较大，导致测量不够准确，而且效率低下。因此需要一种能实现圆弧小于1/4圆弧、圆心测量不准的问题快速准确测量的方案，本课题以此为研究目标，开展小圆弧零件尺寸的测量研究。 
  ],
  keywords-cn: ("多孔质石墨", "……", "稳定性"),

  abstract-en: [
With the continuous development of the manufacturing industry and the field of precision engineering, the demand for accurate measurement of small workpieces is increasing day by day. However, measuring small workpieces has always been a complex and challenging task, especially when the arc part to be measured is less than a quarter of a full - circle and the arc length is less than 10 mm. Traditional measurement methods, such as using coordinate measuring machines, are usually restricted by the site and unable to conduct measurements, or are greatly affected by human factors, resulting in inaccurate measurements and low efficiency. Therefore, a solution is needed to quickly and accurately measure arcs less than 1/4 of a circle and solve the problem of inaccurate center - of - circle measurement. This project takes this as the research objective and conducts research on the measurement of the dimensions of small arc parts.
  ],
  keywords-en: ("porous graphite", "…", "Stability"),

// 结论
  conclusion: [
    本文对局部多孔质气体静压止推轴承的静态特性和稳定性进行了理论研究，对于局部多孔质气体静压径向轴承、圆锥轴承和球轴承仅需对止推轴承压力分布的数学模型进行适当的坐标变换即可对其特性进行求解。同时，本文对局部多孔质气体静压止推轴承进行了实验研究并与整体多孔质和小孔节流止推轴承的静态特性和稳定性进行了实验对比。

    本论文的主要创造性工作归纳如下：

    \1. 建立了基于分形几何理论的多孔质石墨渗透率与分形维数之间关系的数学模型，该模型可预测多孔质石墨的渗透率，并可直观描述各种孔隙的大小对渗透率的影响。通过实验验证了该模型的正确性。

    \2. 分别建立了基于气体连续性方程、Navier-Stokes 方程、Darcy 定律以及气体状态方程的局部多孔质气体静压轴承的承载能力、静态刚度和质量流量的数学模型，利用有限元法进行求解，给出了局部多孔质气体静压轴承的承载能力、静态刚度和质量流量特性曲线。

    ……

    今后还应在以下几个方面继续深入研究：

    \1. 本文仅是采用了局部多孔质圆柱塞这种节流方式，在以后的研究中，可以通过改变局部多孔质材料的形状来改变节流方式，从而通过性能对比，获得最优的节流效果。

    ……
  ],
  // 创新性成果，若没有则可以移除或设置为 none
  achievement:  [
    #par(first-line-indent: 0em)[
      *一、发表的学术论文*
    ]

    [1] ×××，×××. Static Oxidation Model of Al-Mg/C Dissipation Thermal Protection Materials［J］. Rare Metal Materials and Engineering, 2010, 39(Suppl. 1): 520-524.（SCI收录，IDS号为669JS）

    [2] ×××，×××. 精密超声振动切削单晶铜的计算机仿真研究［J］. 系统仿真学报，2007，19（4）：738-741，753.（EI收录号：20071310514841）

    [3] ×××，×××. 局部多孔质气体静压轴向轴承静态特性的数值求解［J］. 摩擦学学报，2007（1）：68-72.（EI收录号：20071510544816）

    [4] ×××，×××. 硬脆光学晶体材料超精密切削理论研究综述［J］. 机械工程学报，2003，39（8）：15-22.（EI收录号：2004088028875）

    [5] ×××，×××. 基于遗传算法的超精密切削加工表面粗糙度预测模型的参数辨识以及切削参数优化［J］. 机械工程学报，2005，41（11）：158-162.（EI收录号：2006039650087）

    [6] ×××，×××. Discrete Sliding Mode Cintrok with Fuzzy Adaptive Reaching Law on 6-PEES Parallel Robot［C］. Intelligent System Design and Applications, Jinan, 2006: 649-652.（EI收录号：20073210746529）

    #par(first-line-indent: 0em)[
      *二、申请及已获得的专利（无专利时此项不必列出）*
    ]

    [1] ×××，×××. 一种温热外敷药制备方案：中国，88105607.3［P］. 1989-07-26.

    #par(first-line-indent: 0em)[
      *三、参与的科研项目及获奖情况*
    ]

    [1] ×××，×××. ××气体静压轴承技术研究, ××省自然科学基金项目.课题编号：××××.

    [2] ×××，×××. ××静载下预应力混凝土房屋结构设计统一理论. 黑江省科学技术二等奖, 2007.
  ],
  // 致谢
  acknowledgement: [
    衷心感谢导师×××教授对本人的精心指导。他的言传身教将使我终身受益。

    感谢×××教授，以及实验室全体老师和同窗们的热情帮助和支持！

    本课题承蒙××××基金资助，特此致谢。

    ……
  ],
  digital-signature-option: (
    // 三种电子签名模式
    // e-digital-signature-mode.off 不启用电子签名功能
    // e-digital-signature-mode.default 直接添加电子版签名图片
    // e-digital-signature-mode.scanned-copy 不显示此页的 typst 渲染结果，并将其替换为扫描件，允许传入 image 或者 pdf
    mode: e-digital-signature-mode.default,

    // default mode
    // 作者电子签名图片及其偏移
    author-signature: [ #lorem(2) ],
    author-signature-offsets: (
      (dx: 13em, dy: 19.15em),
      (dx: 13em, dy: 46.8em),
    ),
    // 导师电子签名图片及其偏移
    supervisor-signature: [ #lorem(3) ],
    supervisor-signature-offsets: (
      (dx: 13em, dy: 49.8em),
    ),

    // 日期及其偏移
    date-array: (
      (datetime.today().year(), datetime.today().month(), datetime.today().day(), ),
      (datetime.today().year(), datetime.today().month(), datetime.today().day(), ),
      (datetime.today().year(), datetime.today().month(), datetime.today().day(), ),
    ),
    date-offsets: (
      (
        (dx: 26em, dy: 19.15em),
        (dx: 30.25em, dy: 19.15em),
        (dx: 32.5em, dy: 19.15em),
      ),
      (
        (dx: 26em, dy: 46.8em),
        (dx: 29.6em, dy: 46.8em),
        (dx: 32em, dy: 46.8em),
      ),
      (
        (dx: 26em, dy: 49.8em),
        (dx: 29.6em, dy: 49.8em),
        (dx: 32em, dy: 49.8em),
      ),
    ),
    // 是否显示原创性声明页的页码
    // show-declaration-of-originality-page-number: false,

    // scanned-copy mode
    // mode 设置为 e-digital-signature-mode.scanned-copy 时允许您直接插入扫描件
    scanned-copy: [
      // 若扫描件是图片，则可以直接设置图片
      // #image("../image/templates/shenzhen-master/shenzhen-master_页面_21.png")

      // 若扫描件是 pdf，则可以转换成图片或使用 muchpdf 来插入
      // #import "@preview/muchpdf:0.1.0": muchpdf
      // #let data = read("universal-bachelor.pdf", encoding: none)
      // #muchpdf(data, pages: 13)
    ]
  )
)


#include "test.typ"
#include "test1.typ"
#include "test2.typ"


