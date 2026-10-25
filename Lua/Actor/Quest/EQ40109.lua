require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40109 = class("Quest40109", QuestActorProxy)
Quest40109.defaultAlias = "Quest40109"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40109:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40109:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4010901"] = self.OnSubStart4010901,
        ["4010902"] = self.OnSubStart4010902,
        ["4010903"] = self.OnSubStart4010903,
        ["4010904"] = self.OnSubStart4010904,
        ["4010905"] = self.OnSubStart4010905,
        ["4010906"] = self.OnSubStart4010906,
        ["4010914"] = self.OnSubStart4010914,
        ["4010915"] = self.OnSubStart4010915,
        ["4010907"] = self.OnSubStart4010907,
        ["4010909"] = self.OnSubStart4010909,
        ["4010910"] = self.OnSubStart4010910,
        ["4010911"] = self.OnSubStart4010911,
        ["4010912"] = self.OnSubStart4010912,
        ["4010913"] = self.OnSubStart4010913
    }
end

function Quest40109:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4010901"] = self.OnSubFinish4010901,
        ["4010902"] = self.OnSubFinish4010902,
        ["4010903"] = self.OnSubFinish4010903,
        ["4010904"] = self.OnSubFinish4010904,
        ["4010905"] = self.OnSubFinish4010905,
        ["4010906"] = self.OnSubFinish4010906,
        ["4010914"] = self.OnSubFinish4010914,
        ["4010915"] = self.OnSubFinish4010915,
        ["4010907"] = self.OnSubFinish4010907,
        ["4010909"] = self.OnSubFinish4010909,
        ["4010910"] = self.OnSubFinish4010910,
        ["4010911"] = self.OnSubFinish4010911,
        ["4010912"] = self.OnSubFinish4010912,
        ["4010913"] = self.OnSubFinish4010913
    }
end

function Quest40109:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40109:Start()
    print("Start")
end

function Quest40109:OnDestroy()
    print("OnDestroy")
end

function Quest40109:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40109:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40109:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3080Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3191Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3097Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3091Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30368Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3089Data.alias, 3)
    this:LightNotifyTo(npcs.Npc3191Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3091Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3089Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4010904Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q4010911Trigger", 3, false)
end

function Quest40109:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40109:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest40109:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest40109:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest40109:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 401090501 then
        this:SetQuestVarByMainId(1, 1)
        actorUtils.FinishQuestID(false, 4010905)
    elseif arg1 == 401090502 then
        this:SetQuestVarByMainId(1, 2)
        actorUtils.FinishQuestID(false, 4010905)
    end
end

function Quest40109:OnSubStart4010901(arg1)
    print("OnSubStart4010901")
end

function Quest40109:OnSubFinish4010901(arg1)
    print("OnSubFinish4010901")
    this:NarratorOnlyTaskByData(datas.NarratorWithId4010901)
end

function Quest40109:OnSubStart4010902(arg1)
    print("OnSubStart4010902")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1070Data.id, 4010902, 1, 15, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010902(arg1)
    print("OnSubFinish4010902")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
end

function Quest40109:OnSubStart4010903(arg1)
    print("OnSubStart4010903")
    this:NpcCreateWithNpcTrigger(npcs.Npc12076Data.id, 4010903, 2, 30)
    this:CreateQuestNpc(arg1, npcs.Npc3079Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc3080Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc3191Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc3081Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc3082Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc3097Data.id, 8)
    this:CreateQuestNpc(arg1, npcs.Npc3084Data.id, 9)
    this:DailyNpcSafeHideSelf(npcs.Npc3091Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010903(arg1)
    print("OnSubFinish4010903")
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
end

function Quest40109:OnSubStart4010904(arg1)
    print("OnSubStart4010904")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc12076Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1034Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc3191Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc3091Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc1049Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 6)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010904Trigger", "Actor/Gadget/Q4010904Trigger", 70900002, 0, {x = -2600.016, y = 217.736, z = -3842.203}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc12076Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1034Data.alias):DisableInteeHeadCtrl(true)
end

function Quest40109:OnSubFinish4010904(arg1)
    print("OnSubFinish4010904")
    this:GetQuestNpcActor(npcs.Npc12076Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1034Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc12076Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3080Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3081Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3082Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3097Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3084Data.alias, 3)
end

function Quest40109:OnSubStart4010905(arg1)
    print("OnSubStart4010905")
    this:LightNotifyTo(npcs.Npc3191Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc3091Data.alias, 0, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc1044Data.id, 4010905, 3, 15)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010905(arg1)
    print("OnSubFinish4010905")
end

function Quest40109:OnSubStart4010906(arg1)
    print("OnSubStart4010906")
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010906(arg1)
    print("OnSubFinish4010906")
end

function Quest40109:OnSubStart4010914(arg1)
    print("OnSubStart4010914")
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010914(arg1)
    print("OnSubFinish4010914")
end

function Quest40109:OnSubStart4010915(arg1)
    print("OnSubStart4010915")
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010915(arg1)
    print("OnSubFinish4010915")
end

function Quest40109:OnSubStart4010907(arg1)
    print("OnSubStart4010907")
    this:NpcCreateWithNpcTrigger(npcs.Npc1044Data.id, 4010907, 3, 40)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010907(arg1)
    print("OnSubFinish4010907")
end

function Quest40109:OnSubStart4010909(arg1)
    print("OnSubStart4010909")
    this:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010909(arg1)
    print("OnSubFinish4010909")
    this:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
end

function Quest40109:OnSubStart4010910(arg1)
    print("OnSubStart4010910")
    this:NpcCreateWithNpcTrigger(npcs.Npc1037Data.id, 4010910, 4, 10)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010910(arg1)
    print("OnSubFinish4010910")
    this:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
end

function Quest40109:OnSubStart4010911(arg1)
    print("OnSubStart4010911")
    this:CreateQuestNpc(arg1, npcs.Npc1069Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4010911Trigger", "Actor/Gadget/Q4010911Trigger", 70900002, 0, points.TPos_Q4010911Trigger.pos, points.TPos_Q4010911Trigger.rot, true, false, 3)
end

function Quest40109:OnSubFinish4010911(arg1)
    print("OnSubFinish4010911")
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
end

function Quest40109:OnSubStart4010912(arg1)
    print("OnSubStart4010912")
    this:NpcCreateWithNpcTrigger(npcs.Npc1069Data.id, 4010912, 5, 30)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010912(arg1)
    print("OnSubFinish4010912")
    this:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30368Data.alias, 3)
end

function Quest40109:OnSubStart4010913(arg1)
    print("OnSubStart4010913")
    this:NpcCreateWithNpcTrigger(npcs.Npc1037Data.id, 4010913, 2, 25)
    this:DailyNpcSafeHideSelf(npcs.Npc3089Data.alias, 1, true)
end

function Quest40109:OnSubFinish4010913(arg1)
    print("OnSubFinish4010913")
    this:LightNotifyTo(npcs.Npc3089Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1037Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1069Data.alias, 3)
end

return Quest40109
