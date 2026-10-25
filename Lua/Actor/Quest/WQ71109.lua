require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71109 = class("Quest71109", QuestActorProxy)
Quest71109.defaultAlias = "Quest71109"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71109:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71109:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7110901"] = self.OnSubStart7110901,
        ["7110902"] = self.OnSubStart7110902,
        ["7110903"] = self.OnSubStart7110903,
        ["7110904"] = self.OnSubStart7110904,
        ["7110905"] = self.OnSubStart7110905,
        ["7110906"] = self.OnSubStart7110906
    }
end

function Quest71109:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7110901"] = self.OnSubFinish7110901,
        ["7110902"] = self.OnSubFinish7110902,
        ["7110903"] = self.OnSubFinish7110903,
        ["7110904"] = self.OnSubFinish7110904,
        ["7110905"] = self.OnSubFinish7110905,
        ["7110906"] = self.OnSubFinish7110906
    }
end

function Quest71109:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71109:Start()
    print("Start")
end

function Quest71109:OnDestroy()
    print("OnDestroy")
end

function Quest71109:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71109:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71109:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71109:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71109:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 711090301 then
        actorUtils.FinishQuestID(false, 7110903)
    end
end

function Quest71109:OnSubStart7110901(arg1)
    print("OnSubStart7110901")
    this:CreateQuestNpc(arg1, npcs.Npc2484Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2493Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2233Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2233Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2234Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2234Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2235Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2235Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110901Trigger", "Actor/Gadget/Q7110901Trigger", 70900002, 0, points.TPos_Q7110901Trigger.pos, points.TPos_Q7110901Trigger.rot, true, false, 3)
end

function Quest71109:OnSubFinish7110901(arg1)
    print("OnSubFinish7110901")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest71109:OnSubStart7110902(arg1)
    print("OnSubStart7110902")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.PaimonData.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2233Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2234Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2235Data.alias, 1, true)
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest71109:OnSubFinish7110902(arg1)
    print("OnSubFinish7110902")
    this:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest71109:OnSubStart7110903(arg1)
    print("OnSubStart7110903")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2233Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2234Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2235Data.alias, 1, true)
end

function Quest71109:OnSubFinish7110903(arg1)
    print("OnSubFinish7110903")
    this:SafeDestroyQuestNpc(npcs.Npc2235Data.alias, 3)
end

function Quest71109:OnSubStart7110904(arg1)
    print("OnSubStart7110904")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2233Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2234Data.alias, 1, true)
end

function Quest71109:OnSubFinish7110904(arg1)
    print("OnSubFinish7110904")
end

function Quest71109:OnSubStart7110905(arg1)
    print("OnSubStart7110905")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2233Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2234Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110905Trigger", "Actor/Gadget/Q7110905Trigger", 70900002, 0, points.TPos_Q7110905Trigger.pos, points.TPos_Q7110905Trigger.rot, true, false, 3)
end

function Quest71109:OnSubFinish7110905(arg1)
    print("OnSubFinish7110905")
end

function Quest71109:OnSubStart7110906(arg1)
    print("OnSubStart7110906")
    this:DailyNpcSafeHideSelf(npcs.Npc2484Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2233Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2234Data.alias, 1, true)
    this:RequestInteraction(npcs.Npc2233Data.alias, "1", true)
end

function Quest71109:OnSubFinish7110906(arg1)
    print("OnSubFinish7110906")
    this:SafeDestroyQuestNpc(npcs.Npc2484Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2493Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2233Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2234Data.alias, 3)
end

return Quest71109
