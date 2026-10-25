require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4012 = class("Quest4012", QuestActorProxy)
Quest4012.defaultAlias = "Quest4012"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4012:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["401201"] = self.OnSubStart401201,
        ["401202"] = self.OnSubStart401202,
        ["401203"] = self.OnSubStart401203,
        ["401216"] = self.OnSubStart401216,
        ["401217"] = self.OnSubStart401217,
        ["401204"] = self.OnSubStart401204,
        ["401205"] = self.OnSubStart401205,
        ["401206"] = self.OnSubStart401206,
        ["401207"] = self.OnSubStart401207,
        ["401208"] = self.OnSubStart401208,
        ["401209"] = self.OnSubStart401209,
        ["401210"] = self.OnSubStart401210,
        ["401211"] = self.OnSubStart401211,
        ["401220"] = self.OnSubStart401220,
        ["401221"] = self.OnSubStart401221,
        ["401222"] = self.OnSubStart401222,
        ["401223"] = self.OnSubStart401223,
        ["401212"] = self.OnSubStart401212,
        ["401224"] = self.OnSubStart401224,
        ["401225"] = self.OnSubStart401225,
        ["401226"] = self.OnSubStart401226,
        ["401218"] = self.OnSubStart401218,
        ["401219"] = self.OnSubStart401219,
        ["401213"] = self.OnSubStart401213,
        ["401214"] = self.OnSubStart401214,
        ["401215"] = self.OnSubStart401215
    }
end

function Quest4012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["401201"] = self.OnSubFinish401201,
        ["401202"] = self.OnSubFinish401202,
        ["401203"] = self.OnSubFinish401203,
        ["401216"] = self.OnSubFinish401216,
        ["401217"] = self.OnSubFinish401217,
        ["401204"] = self.OnSubFinish401204,
        ["401205"] = self.OnSubFinish401205,
        ["401206"] = self.OnSubFinish401206,
        ["401207"] = self.OnSubFinish401207,
        ["401208"] = self.OnSubFinish401208,
        ["401209"] = self.OnSubFinish401209,
        ["401210"] = self.OnSubFinish401210,
        ["401211"] = self.OnSubFinish401211,
        ["401220"] = self.OnSubFinish401220,
        ["401221"] = self.OnSubFinish401221,
        ["401222"] = self.OnSubFinish401222,
        ["401223"] = self.OnSubFinish401223,
        ["401212"] = self.OnSubFinish401212,
        ["401224"] = self.OnSubFinish401224,
        ["401225"] = self.OnSubFinish401225,
        ["401226"] = self.OnSubFinish401226,
        ["401218"] = self.OnSubFinish401218,
        ["401219"] = self.OnSubFinish401219,
        ["401213"] = self.OnSubFinish401213,
        ["401214"] = self.OnSubFinish401214,
        ["401215"] = self.OnSubFinish401215
    }
end

function Quest4012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4012:Start()
    print("Start")
end

function Quest4012:OnDestroy()
    print("OnDestroy")
end

function Quest4012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4012:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4012:OnSubStart401201(arg1)
    print("OnSubStart401201")
    this:CreateQuestNpc(arg1, npcs.Npc13462Data.id, 0)
    actorMgr:CreateActorWithPos("Q401201Trigger", "Actor/Gadget/Q401201Trigger", 70900002, 0, {x = 4364.56, y = 348.74, z = 4528.47}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest4012:OnSubFinish401201(arg1)
    print("OnSubFinish401201")
    this:SafeDestroyQuestNpc(npcs.Npc13462Data.alias, 3)
end

function Quest4012:OnSubStart401202(arg1)
    print("OnSubStart401202")
    actorMgr:CreateActorWithPos("Q401202Trigger", "Actor/Gadget/Q401202Trigger", 70900002, 0, points.TPos_Q401202Trigger.pos, points.TPos_Q401202Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q401202TriggerTalk", "Actor/Gadget/Q401202TriggerTalk", 70900002, 0, points.TPos_Q401202TriggerTalk.pos, points.TPos_Q401202TriggerTalk.rot, true, false, 3)
end

function Quest4012:OnSubFinish401202(arg1)
    print("OnSubFinish401202")
    this:ActorDestroy("Q401202TriggerTalk")
end

function Quest4012:OnSubStart401203(arg1)
    print("OnSubStart401203")
    actorMgr:CreateActorWithPos("Q401203Trigger", "Actor/Gadget/Q401203Trigger", 70900002, 0, points.TPos_Q401203Trigger.pos, points.TPos_Q401203Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401203(arg1)
    print("OnSubFinish401203")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
end

function Quest4012:OnSubStart401216(arg1)
    print("OnSubStart401216")
end

function Quest4012:OnSubFinish401216(arg1)
    print("OnSubFinish401216")
end

function Quest4012:OnSubStart401217(arg1)
    print("OnSubStart401217")
end

function Quest4012:OnSubFinish401217(arg1)
    print("OnSubFinish401217")
end

function Quest4012:OnSubStart401204(arg1)
    print("OnSubStart401204")
    actorMgr:CreateActorWithPos("Q401204Trigger", "Actor/Gadget/Q401204Trigger", 70900002, 0, points.TPos_Q401204Trigger.pos, points.TPos_Q401204Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401204(arg1)
    print("OnSubFinish401204")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
end

function Quest4012:OnSubStart401205(arg1)
    print("OnSubStart401205")
    actorMgr:CreateActorWithPos("Q401205Trigger", "Actor/Gadget/Q401205Trigger", 70900002, 0, points.TPos_Q401205Trigger.pos, points.TPos_Q401205Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401205(arg1)
    print("OnSubFinish401205")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
end

function Quest4012:OnSubStart401206(arg1)
    print("OnSubStart401206")
    this:CreateQuestNpc(arg1, npcs.Npc13546Data.id, 0)
    actorMgr:CreateActorWithPos("Q401206Trigger", "Actor/Gadget/Q401206Trigger", 70900002, 0, points.TPos_Q401206Trigger.pos, points.TPos_Q401206Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401206(arg1)
    print("OnSubFinish401206")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13546Data.alias, 3)
end

function Quest4012:OnSubStart401207(arg1)
    print("OnSubStart401207")
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):SitOnChair(0, true)
    actorMgr:CreateActorWithPos("Q401207Trigger", "Actor/Gadget/Q401207Trigger", 70900002, 0, points.TPos_Q401207Trigger.pos, points.TPos_Q401207Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401207(arg1)
    print("OnSubFinish401207")
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
end

function Quest4012:OnSubStart401208(arg1)
    print("OnSubStart401208")
    actorMgr:CreateActorWithPos("Q401208Trigger", "Actor/Gadget/Q401208Trigger", 70900002, 0, points.TPos_Q401208Trigger.pos, points.TPos_Q401208Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401208(arg1)
    print("OnSubFinish401208")
end

function Quest4012:OnSubStart401209(arg1)
    print("OnSubStart401209")
    this:CreateQuestNpc(arg1, npcs.Npc1078Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1079Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13548Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1078Data.alias):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1079Data.alias):SitOnChair(0, true)
    actorMgr:CreateActorWithPos("Q401209Trigger", "Actor/Gadget/Q401209Trigger", 70900002, 0, points.TPos_Q401209Trigger.pos, points.TPos_Q401209Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401209(arg1)
    print("OnSubFinish401209")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13548Data.alias, 3)
end

function Quest4012:OnSubStart401210(arg1)
    print("OnSubStart401210")
    this:CreateQuestNpc(arg1, npcs.Npc5236Data.id, 0)
end

function Quest4012:OnSubFinish401210(arg1)
    print("OnSubFinish401210")
end

function Quest4012:OnSubStart401211(arg1)
    print("OnSubStart401211")
end

function Quest4012:OnSubFinish401211(arg1)
    print("OnSubFinish401211")
end

function Quest4012:OnSubStart401220(arg1)
    print("OnSubStart401220")
end

function Quest4012:OnSubFinish401220(arg1)
    print("OnSubFinish401220")
    this:NarratorOnlyTaskByData(datas.NarratorWithIdFinishwork)
end

function Quest4012:OnSubStart401221(arg1)
    print("OnSubStart401221")
end

function Quest4012:OnSubFinish401221(arg1)
    print("OnSubFinish401221")
end

function Quest4012:OnSubStart401222(arg1)
    print("OnSubStart401222")
end

function Quest4012:OnSubFinish401222(arg1)
    print("OnSubFinish401222")
end

function Quest4012:OnSubStart401223(arg1)
    print("OnSubStart401223")
end

function Quest4012:OnSubFinish401223(arg1)
    print("OnSubFinish401223")
end

function Quest4012:OnSubStart401212(arg1)
    print("OnSubStart401212")
end

function Quest4012:OnSubFinish401212(arg1)
    print("OnSubFinish401212")
    this:SafeDestroyQuestNpc(npcs.Npc5236Data.alias, 3)
end

function Quest4012:OnSubStart401224(arg1)
    print("OnSubStart401224")
end

function Quest4012:OnSubFinish401224(arg1)
    print("OnSubFinish401224")
end

function Quest4012:OnSubStart401225(arg1)
    print("OnSubStart401225")
end

function Quest4012:OnSubFinish401225(arg1)
    print("OnSubFinish401225")
end

function Quest4012:OnSubStart401226(arg1)
    print("OnSubStart401226")
end

function Quest4012:OnSubFinish401226(arg1)
    print("OnSubFinish401226")
end

function Quest4012:OnSubStart401218(arg1)
    print("OnSubStart401218")
    actorMgr:CreateActorWithPos("Q401218Trigger", "Actor/Gadget/Q401218Trigger", 70900002, 0, points.TPos_Q401218Trigger.pos, points.TPos_Q401218Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401218(arg1)
    print("OnSubFinish401218")
    this:NarratorOnlyTaskByData(datas.NarratorWithId401218, nil, 4012)
end

function Quest4012:OnSubStart401219(arg1)
    print("OnSubStart401219")
    actorMgr:CreateActorWithPos("Q401219Trigger", "Actor/Gadget/Q401219Trigger", 70900002, 0, points.TPos_Q401219Trigger.pos, points.TPos_Q401219Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401219(arg1)
    print("OnSubFinish401219")
    this:NarratorOnlyTaskByData(datas.NarratorWithId401219, nil, 4012)
end

function Quest4012:OnSubStart401213(arg1)
    print("OnSubStart401213")
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    actorMgr:CreateActorWithPos("Q401213Trigger", "Actor/Gadget/Q401213Trigger", 70900002, 0, points.TPos_Q401213Trigger.pos, points.TPos_Q401213Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401213(arg1)
    print("OnSubFinish401213")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
end

function Quest4012:OnSubStart401214(arg1)
    print("OnSubStart401214")
    actorMgr:CreateActorWithPos("Q401214Trigger", "Actor/Gadget/Q401214Trigger", 70900002, 0, points.TPos_Q401214Trigger.pos, points.TPos_Q401214Trigger.rot, true, false, 3)
end

function Quest4012:OnSubFinish401214(arg1)
    print("OnSubFinish401214")
    this:SafeDestroyQuestNpc(npcs.Npc13515Data.alias, 3)
end

function Quest4012:OnSubStart401215(arg1)
    print("OnSubStart401215")
    this:CreateQuestNpc(arg1, npcs.Npc13554Data.id, 0)
end

function Quest4012:OnSubFinish401215(arg1)
    print("OnSubFinish401215")
    this:SafeDestroyQuestNpc(npcs.Npc13554Data.alias, 3)
end

return Quest4012
