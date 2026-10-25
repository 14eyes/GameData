require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71100 = class("Quest71100", QuestActorProxy)
Quest71100.defaultAlias = "Quest71100"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71100:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71100:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7110001"] = self.OnSubStart7110001,
        ["7110088"] = self.OnSubStart7110088,
        ["7110002"] = self.OnSubStart7110002,
        ["7110003"] = self.OnSubStart7110003,
        ["7110080"] = self.OnSubStart7110080,
        ["7110004"] = self.OnSubStart7110004,
        ["7110005"] = self.OnSubStart7110005,
        ["7110007"] = self.OnSubStart7110007,
        ["7110066"] = self.OnSubStart7110066,
        ["7110074"] = self.OnSubStart7110074,
        ["7110072"] = self.OnSubStart7110072,
        ["7110067"] = self.OnSubStart7110067,
        ["7110009"] = self.OnSubStart7110009,
        ["7110010"] = self.OnSubStart7110010,
        ["7110020"] = self.OnSubStart7110020,
        ["7110069"] = self.OnSubStart7110069,
        ["7110068"] = self.OnSubStart7110068,
        ["7110021"] = self.OnSubStart7110021,
        ["7110025"] = self.OnSubStart7110025,
        ["7110084"] = self.OnSubStart7110084,
        ["7110026"] = self.OnSubStart7110026,
        ["7110027"] = self.OnSubStart7110027,
        ["7110028"] = self.OnSubStart7110028,
        ["7110063"] = self.OnSubStart7110063,
        ["7110029"] = self.OnSubStart7110029,
        ["7110030"] = self.OnSubStart7110030,
        ["7110083"] = self.OnSubStart7110083,
        ["7110031"] = self.OnSubStart7110031,
        ["7110032"] = self.OnSubStart7110032,
        ["7110033"] = self.OnSubStart7110033,
        ["7110034"] = self.OnSubStart7110034,
        ["7110064"] = self.OnSubStart7110064,
        ["7110035"] = self.OnSubStart7110035,
        ["7110044"] = self.OnSubStart7110044,
        ["7110045"] = self.OnSubStart7110045,
        ["7110046"] = self.OnSubStart7110046,
        ["7110082"] = self.OnSubStart7110082,
        ["7110048"] = self.OnSubStart7110048,
        ["7110049"] = self.OnSubStart7110049,
        ["7110050"] = self.OnSubStart7110050,
        ["7110051"] = self.OnSubStart7110051,
        ["7110052"] = self.OnSubStart7110052,
        ["7110085"] = self.OnSubStart7110085,
        ["7110053"] = self.OnSubStart7110053,
        ["7110054"] = self.OnSubStart7110054,
        ["7110055"] = self.OnSubStart7110055,
        ["7110056"] = self.OnSubStart7110056,
        ["7110057"] = self.OnSubStart7110057,
        ["7110071"] = self.OnSubStart7110071,
        ["7110081"] = self.OnSubStart7110081,
        ["7110058"] = self.OnSubStart7110058,
        ["7110059"] = self.OnSubStart7110059,
        ["7110087"] = self.OnSubStart7110087,
        ["7110086"] = self.OnSubStart7110086,
        ["7110060"] = self.OnSubStart7110060
    }
end

function Quest71100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7110001"] = self.OnSubFinish7110001,
        ["7110088"] = self.OnSubFinish7110088,
        ["7110002"] = self.OnSubFinish7110002,
        ["7110003"] = self.OnSubFinish7110003,
        ["7110080"] = self.OnSubFinish7110080,
        ["7110004"] = self.OnSubFinish7110004,
        ["7110005"] = self.OnSubFinish7110005,
        ["7110007"] = self.OnSubFinish7110007,
        ["7110066"] = self.OnSubFinish7110066,
        ["7110074"] = self.OnSubFinish7110074,
        ["7110072"] = self.OnSubFinish7110072,
        ["7110067"] = self.OnSubFinish7110067,
        ["7110009"] = self.OnSubFinish7110009,
        ["7110010"] = self.OnSubFinish7110010,
        ["7110020"] = self.OnSubFinish7110020,
        ["7110069"] = self.OnSubFinish7110069,
        ["7110068"] = self.OnSubFinish7110068,
        ["7110021"] = self.OnSubFinish7110021,
        ["7110025"] = self.OnSubFinish7110025,
        ["7110084"] = self.OnSubFinish7110084,
        ["7110026"] = self.OnSubFinish7110026,
        ["7110027"] = self.OnSubFinish7110027,
        ["7110028"] = self.OnSubFinish7110028,
        ["7110063"] = self.OnSubFinish7110063,
        ["7110029"] = self.OnSubFinish7110029,
        ["7110030"] = self.OnSubFinish7110030,
        ["7110083"] = self.OnSubFinish7110083,
        ["7110031"] = self.OnSubFinish7110031,
        ["7110032"] = self.OnSubFinish7110032,
        ["7110033"] = self.OnSubFinish7110033,
        ["7110034"] = self.OnSubFinish7110034,
        ["7110064"] = self.OnSubFinish7110064,
        ["7110035"] = self.OnSubFinish7110035,
        ["7110044"] = self.OnSubFinish7110044,
        ["7110045"] = self.OnSubFinish7110045,
        ["7110046"] = self.OnSubFinish7110046,
        ["7110082"] = self.OnSubFinish7110082,
        ["7110048"] = self.OnSubFinish7110048,
        ["7110049"] = self.OnSubFinish7110049,
        ["7110050"] = self.OnSubFinish7110050,
        ["7110051"] = self.OnSubFinish7110051,
        ["7110052"] = self.OnSubFinish7110052,
        ["7110085"] = self.OnSubFinish7110085,
        ["7110053"] = self.OnSubFinish7110053,
        ["7110054"] = self.OnSubFinish7110054,
        ["7110055"] = self.OnSubFinish7110055,
        ["7110056"] = self.OnSubFinish7110056,
        ["7110057"] = self.OnSubFinish7110057,
        ["7110071"] = self.OnSubFinish7110071,
        ["7110081"] = self.OnSubFinish7110081,
        ["7110058"] = self.OnSubFinish7110058,
        ["7110059"] = self.OnSubFinish7110059,
        ["7110087"] = self.OnSubFinish7110087,
        ["7110086"] = self.OnSubFinish7110086,
        ["7110060"] = self.OnSubFinish7110060
    }
end

function Quest71100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71100:Start()
    print("Start")
end

function Quest71100:OnDestroy()
    print("OnDestroy")
end

function Quest71100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71100:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2501Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 20207)
    this:SafeDestroyQuestNpc(npcs.Npc2491Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21307Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7110001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110002Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110003Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110006Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110009Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110010Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110020Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110022Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110026Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110027Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q7110035TalkTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110035Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110037Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110039Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110041Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110045Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110049Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110050Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110052Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110054Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110060Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110068Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110069Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110084Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110085Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110087Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110088Trigger", 3, false)
    this:DestroyNpcTrigger("Q7110001N2501Trigger")
    this:DestroyNpcTrigger("Q7110004N2501Trigger")
    this:DestroyNpcTrigger("Q7110007N21094Trigger")
    this:DestroyNpcTrigger("Q7110027N2501Trigger")
    this:DestroyNpcTrigger("Q7110044N21094Trigger")
    this:DestroyNpcTrigger("Q7110055N21094Trigger")
    this:DestroyNpcTrigger("Q7110086N2501Trigger")
end

function Quest71100:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest71100:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71100:OnSubStart7110001(arg1)
    print("OnSubStart7110001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2501Data.id, 7110001, 0, 20, 0.5)
    actorMgr:CreateActorWithPos("Q7110001Trigger", "Actor/Gadget/Q7110001Trigger", 70900002, 0, points.TPos_Q7110001Trigger.pos, points.TPos_Q7110001Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110001(arg1)
    print("OnSubFinish7110001")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21307Data.alias)
end

function Quest71100:OnSubStart7110088(arg1)
    print("OnSubStart7110088")
    actorMgr:CreateActorWithPos("Q7110088Trigger", "Actor/Gadget/Q7110088Trigger", 70900002, 0, points.TPos_Q7110088Trigger.pos, points.TPos_Q7110088Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110088(arg1)
    print("OnSubFinish7110088")
end

function Quest71100:OnSubStart7110002(arg1)
    print("OnSubStart7110002")
end

function Quest71100:OnSubFinish7110002(arg1)
    print("OnSubFinish7110002")
end

function Quest71100:OnSubStart7110003(arg1)
    print("OnSubStart7110003")
    actorMgr:CreateActorWithPos("Q7110003Trigger", "Actor/Gadget/Q7110003Trigger", 70900002, 0, points.TPos_Q7110003Trigger.pos, points.TPos_Q7110003Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110003(arg1)
    print("OnSubFinish7110003")
end

function Quest71100:OnSubStart7110080(arg1)
    print("OnSubStart7110080")
end

function Quest71100:OnSubFinish7110080(arg1)
    print("OnSubFinish7110080")
end

function Quest71100:OnSubStart7110004(arg1)
    print("OnSubStart7110004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2501Data.id, 7110004, 0, 15, 0.5)
end

function Quest71100:OnSubFinish7110004(arg1)
    print("OnSubFinish7110004")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
end

function Quest71100:OnSubStart7110005(arg1)
    print("OnSubStart7110005")
end

function Quest71100:OnSubFinish7110005(arg1)
    print("OnSubFinish7110005")
end

function Quest71100:OnSubStart7110007(arg1)
    print("OnSubStart7110007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21094Data.id, 7110007, 0, 15, 1)
end

function Quest71100:OnSubFinish7110007(arg1)
    print("OnSubFinish7110007")
end

function Quest71100:OnSubStart7110066(arg1)
    print("OnSubStart7110066")
end

function Quest71100:OnSubFinish7110066(arg1)
    print("OnSubFinish7110066")
end

function Quest71100:OnSubStart7110074(arg1)
    print("OnSubStart7110074")
end

function Quest71100:OnSubFinish7110074(arg1)
    print("OnSubFinish7110074")
end

function Quest71100:OnSubStart7110072(arg1)
    print("OnSubStart7110072")
end

function Quest71100:OnSubFinish7110072(arg1)
    print("OnSubFinish7110072")
    this:QuestNarratorTask(datas.Narrator_7110010)
end

function Quest71100:OnSubStart7110067(arg1)
    print("OnSubStart7110067")
end

function Quest71100:OnSubFinish7110067(arg1)
    print("OnSubFinish7110067")
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 3)
end

function Quest71100:OnSubStart7110009(arg1)
    print("OnSubStart7110009")
    actorMgr:CreateActorWithPos("Q7110009Trigger", "Actor/Gadget/Q7110009Trigger", 70900002, 0, points.TPos_Q7110009Trigger.pos, points.TPos_Q7110009Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110009(arg1)
    print("OnSubFinish7110009")
end

function Quest71100:OnSubStart7110010(arg1)
    print("OnSubStart7110010")
end

function Quest71100:OnSubFinish7110010(arg1)
    print("OnSubFinish7110010")
    actorMgr:CreateActorWithPos("Q7110010Trigger", "Actor/Gadget/Q7110010Trigger", 70900002, 0, points.TPos_Q7110010Trigger.pos, points.TPos_Q7110010Trigger.rot, true, false, 3)
end

function Quest71100:OnSubStart7110020(arg1)
    print("OnSubStart7110020")
    actorMgr:CreateActorWithPos("Q7110020Trigger", "Actor/Gadget/Q7110020Trigger", 70900002, 0, points.TPos_Q7110020Trigger.pos, points.TPos_Q7110020Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110020(arg1)
    print("OnSubFinish7110020")
end

function Quest71100:OnSubStart7110069(arg1)
    print("OnSubStart7110069")
end

function Quest71100:OnSubFinish7110069(arg1)
    print("OnSubFinish7110069")
    actorMgr:CreateActorWithPos("Q7110069Trigger", "Actor/Gadget/Q7110069Trigger", 70900002, 0, points.TPos_Q7110069Trigger.pos, points.TPos_Q7110069Trigger.rot, true, false, 3)
end

function Quest71100:OnSubStart7110068(arg1)
    print("OnSubStart7110068")
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
    actorMgr:CreateActorWithPos("Q7110068Trigger", "Actor/Gadget/Q7110068Trigger", 70900002, 0, points.TPos_Q7110068Trigger.pos, points.TPos_Q7110068Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110068(arg1)
    print("OnSubFinish7110068")
    this:TransmitPlayerUseCustomizedTplById(arg1, 2, 36)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21094Data.alias)
end

function Quest71100:OnSubStart7110021(arg1)
    print("OnSubStart7110021")
end

function Quest71100:OnSubFinish7110021(arg1)
    print("OnSubFinish7110021")
end

function Quest71100:OnSubStart7110025(arg1)
    print("OnSubStart7110025")
end

function Quest71100:OnSubFinish7110025(arg1)
    print("OnSubFinish7110025")
end

function Quest71100:OnSubStart7110084(arg1)
    print("OnSubStart7110084")
    actorMgr:CreateActorWithPos("Q7110084Trigger", "Actor/Gadget/Q7110084Trigger", 70900002, 0, points.TPos_Q7110084Trigger.pos, points.TPos_Q7110084Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110084(arg1)
    print("OnSubFinish7110084")
end

function Quest71100:OnSubStart7110026(arg1)
    print("OnSubStart7110026")
    actorMgr:CreateActorWithPos("Q7110026Trigger", "Actor/Gadget/Q7110026Trigger", 70900002, 0, points.TPos_Q7110026Trigger.pos, points.TPos_Q7110026Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110026(arg1)
    print("OnSubFinish7110026")
end

function Quest71100:OnSubStart7110027(arg1)
    print("OnSubStart7110027")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2501Data.id, 7110027, 0, 10, 0.5)
end

function Quest71100:OnSubFinish7110027(arg1)
    print("OnSubFinish7110027")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
end

function Quest71100:OnSubStart7110028(arg1)
    print("OnSubStart7110028")
end

function Quest71100:OnSubFinish7110028(arg1)
    print("OnSubFinish7110028")
end

function Quest71100:OnSubStart7110063(arg1)
    print("OnSubStart7110063")
end

function Quest71100:OnSubFinish7110063(arg1)
    print("OnSubFinish7110063")
end

function Quest71100:OnSubStart7110029(arg1)
    print("OnSubStart7110029")
end

function Quest71100:OnSubFinish7110029(arg1)
    print("OnSubFinish7110029")
end

function Quest71100:OnSubStart7110030(arg1)
    print("OnSubStart7110030")
end

function Quest71100:OnSubFinish7110030(arg1)
    print("OnSubFinish7110030")
    this:QuestNarratorTask(datas.NarratorWithId30)
end

function Quest71100:OnSubStart7110083(arg1)
    print("OnSubStart7110083")
end

function Quest71100:OnSubFinish7110083(arg1)
    print("OnSubFinish7110083")
end

function Quest71100:OnSubStart7110031(arg1)
    print("OnSubStart7110031")
end

function Quest71100:OnSubFinish7110031(arg1)
    print("OnSubFinish7110031")
end

function Quest71100:OnSubStart7110032(arg1)
    print("OnSubStart7110032")
end

function Quest71100:OnSubFinish7110032(arg1)
    print("OnSubFinish7110032")
end

function Quest71100:OnSubStart7110033(arg1)
    print("OnSubStart7110033")
end

function Quest71100:OnSubFinish7110033(arg1)
    print("OnSubFinish7110033")
end

function Quest71100:OnSubStart7110034(arg1)
    print("OnSubStart7110034")
end

function Quest71100:OnSubFinish7110034(arg1)
    print("OnSubFinish7110034")
end

function Quest71100:OnSubStart7110064(arg1)
    print("OnSubStart7110064")
end

function Quest71100:OnSubFinish7110064(arg1)
    print("OnSubFinish7110064")
end

function Quest71100:OnSubStart7110035(arg1)
    print("OnSubStart7110035")
    actorMgr:CreateActorWithPos("Q7110035Trigger", "Actor/Gadget/Q7110035Trigger", 70900002, 0, points.TPos_Q7110035Trigger.pos, points.TPos_Q7110035Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110035(arg1)
    print("OnSubFinish7110035")
end

function Quest71100:OnSubStart7110044(arg1)
    print("OnSubStart7110044")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21094Data.id, 7110044, 0, 20, 0.5)
end

function Quest71100:OnSubFinish7110044(arg1)
    print("OnSubFinish7110044")
    this:QuestNarratorTask(datas.Narrator_7110006)
end

function Quest71100:OnSubStart7110045(arg1)
    print("OnSubStart7110045")
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
    this:CallDelayByQuest("", 3, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
        actorMgr:CreateActorWithPos("Q7110045Trigger", "Actor/Gadget/Q7110045Trigger", 70900002, 0, points.TPos_Q7110045Trigger.pos, points.TPos_Q7110045Trigger.rot, true, false, 3)
    end)
end

function Quest71100:OnSubFinish7110045(arg1)
    print("OnSubFinish7110045")
end

function Quest71100:OnSubStart7110046(arg1)
    print("OnSubStart7110046")
end

function Quest71100:OnSubFinish7110046(arg1)
    print("OnSubFinish7110046")
end

function Quest71100:OnSubStart7110082(arg1)
    print("OnSubStart7110082")
end

function Quest71100:OnSubFinish7110082(arg1)
    print("OnSubFinish7110082")
end

function Quest71100:OnSubStart7110048(arg1)
    print("OnSubStart7110048")
    this:CallDelayByQuest("", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            this:RequestInteraction(npcs.Npc21094Data.alias, "", true)
        end)
    end)
end

function Quest71100:OnSubFinish7110048(arg1)
    print("OnSubFinish7110048")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21094Data.alias)
end

function Quest71100:OnSubStart7110049(arg1)
    print("OnSubStart7110049")
    actorMgr:CreateActorWithPos("Q7110049Trigger", "Actor/Gadget/Q7110049Trigger", 70900002, 0, points.TPos_Q7110049Trigger.pos, points.TPos_Q7110049Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110049(arg1)
    print("OnSubFinish7110049")
end

function Quest71100:OnSubStart7110050(arg1)
    print("OnSubStart7110050")
    actorMgr:CreateActorWithPos("Q7110050Trigger", "Actor/Gadget/Q7110050Trigger", 70900002, 0, points.TPos_Q7110050Trigger.pos, points.TPos_Q7110050Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110050(arg1)
    print("OnSubFinish7110050")
end

function Quest71100:OnSubStart7110051(arg1)
    print("OnSubStart7110051")
end

function Quest71100:OnSubFinish7110051(arg1)
    print("OnSubFinish7110051")
end

function Quest71100:OnSubStart7110052(arg1)
    print("OnSubStart7110052")
    this:CreateQuestNpc(arg1, npcs.Npc21307Data.id, 0)
    actorMgr:CreateActorWithPos("Q7110052Trigger", "Actor/Gadget/Q7110052Trigger", 70900002, 0, points.TPos_Q7110052Trigger.pos, points.TPos_Q7110052Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110052(arg1)
    print("OnSubFinish7110052")
end

function Quest71100:OnSubStart7110085(arg1)
    print("OnSubStart7110085")
    actorMgr:CreateActorWithPos("Q7110085Trigger", "Actor/Gadget/Q7110085Trigger", 70900002, 0, points.TPos_Q7110085Trigger.pos, points.TPos_Q7110085Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110085(arg1)
    print("OnSubFinish7110085")
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:QuestNarratorTask(datas.Narrator_7110009)
    end)

    this:NpcDestroyWithBlackscreen(3, npcs.Npc21307Data.alias)
end

function Quest71100:OnSubStart7110053(arg1)
    print("OnSubStart7110053")
end

function Quest71100:OnSubFinish7110053(arg1)
    print("OnSubFinish7110053")
end

function Quest71100:OnSubStart7110054(arg1)
    print("OnSubStart7110054")
    actorMgr:CreateActorWithPos("Q7110054Trigger", "Actor/Gadget/Q7110054Trigger", 70900002, 0, points.TPos_Q7110054Trigger.pos, points.TPos_Q7110054Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110054(arg1)
    print("OnSubFinish7110054")
end

function Quest71100:OnSubStart7110055(arg1)
    print("OnSubStart7110055")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21094Data.id, 7110055, 0, 10, 0.5)
end

function Quest71100:OnSubFinish7110055(arg1)
    print("OnSubFinish7110055")
end

function Quest71100:OnSubStart7110056(arg1)
    print("OnSubStart7110056")
    this:GetQuestNpcActor(npcs.Npc21094Data.alias):DoFreeStyle(1350, true, nil, true, true, false, false)
    this:CallDelayByQuest("", 3, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
    end)
end

function Quest71100:OnSubFinish7110056(arg1)
    print("OnSubFinish7110056")
end

function Quest71100:OnSubStart7110057(arg1)
    print("OnSubStart7110057")
    this:RequestInteraction(npcs.Npc21094Data.alias, "", true)
end

function Quest71100:OnSubFinish7110057(arg1)
    print("OnSubFinish7110057")
    this:PlayerEnterDungeonPointWithDialogs(1109, 1194, 7110057, 1, datas.DialogsId, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 3)
end

function Quest71100:OnSubStart7110071(arg1)
    print("OnSubStart7110071")
end

function Quest71100:OnSubFinish7110071(arg1)
    print("OnSubFinish7110071")
end

function Quest71100:OnSubStart7110081(arg1)
    print("OnSubStart7110081")
end

function Quest71100:OnSubFinish7110081(arg1)
    print("OnSubFinish7110081")
end

function Quest71100:OnSubStart7110058(arg1)
    print("OnSubStart7110058")
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21094Data.alias):DoFreeStyle(1350, true, nil, true, true, false, false)
    this:CallDelayByQuest("", 3, function(arg1)
        actorUtils.FinishQuestID(false, 7110058)
    end)
end

function Quest71100:OnSubFinish7110058(arg1)
    print("OnSubFinish7110058")
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 20207)
end

function Quest71100:OnSubStart7110059(arg1)
    print("OnSubStart7110059")
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
    this:RequestInteraction(npcs.Npc21094Data.alias, "", true)
end

function Quest71100:OnSubFinish7110059(arg1)
    print("OnSubFinish7110059")
    this:TransmitPlayerById(arg1, 4)
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 20207)
end

function Quest71100:OnSubStart7110087(arg1)
    print("OnSubStart7110087")
    actorMgr:CreateActorWithPos("Q7110087Trigger", "Actor/Gadget/Q7110087Trigger", 70900002, 0, points.TPos_Q7110087Trigger.pos, points.TPos_Q7110087Trigger.rot, true, false, 3)
end

function Quest71100:OnSubFinish7110087(arg1)
    print("OnSubFinish7110087")
end

function Quest71100:OnSubStart7110086(arg1)
    print("OnSubStart7110086")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2501Data.id, 7110086, 0, 15, 0.5)
end

function Quest71100:OnSubFinish7110086(arg1)
    print("OnSubFinish7110086")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
end

function Quest71100:OnSubStart7110060(arg1)
    print("OnSubStart7110060")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2493Data.id, 7110060, 0, 8, 0.5)
end

function Quest71100:OnSubFinish7110060(arg1)
    print("OnSubFinish7110060")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2493Data.alias)
end

return Quest71100
