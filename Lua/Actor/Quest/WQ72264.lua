require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72264 = class("Quest72264", QuestActorProxy)
Quest72264.defaultAlias = "Quest72264"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72264:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72264:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7226411"] = self.OnSubStart7226411,
        ["7226401"] = self.OnSubStart7226401,
        ["7226402"] = self.OnSubStart7226402,
        ["7226403"] = self.OnSubStart7226403,
        ["7226412"] = self.OnSubStart7226412,
        ["7226404"] = self.OnSubStart7226404,
        ["7226405"] = self.OnSubStart7226405,
        ["7226410"] = self.OnSubStart7226410,
        ["7226406"] = self.OnSubStart7226406,
        ["7226407"] = self.OnSubStart7226407,
        ["7226408"] = self.OnSubStart7226408,
        ["7226409"] = self.OnSubStart7226409
    }
end

function Quest72264:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7226411"] = self.OnSubFinish7226411,
        ["7226401"] = self.OnSubFinish7226401,
        ["7226402"] = self.OnSubFinish7226402,
        ["7226403"] = self.OnSubFinish7226403,
        ["7226412"] = self.OnSubFinish7226412,
        ["7226404"] = self.OnSubFinish7226404,
        ["7226405"] = self.OnSubFinish7226405,
        ["7226410"] = self.OnSubFinish7226410,
        ["7226406"] = self.OnSubFinish7226406,
        ["7226407"] = self.OnSubFinish7226407,
        ["7226408"] = self.OnSubFinish7226408,
        ["7226409"] = self.OnSubFinish7226409
    }
end

function Quest72264:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72264:Start()
    print("Start")
end

function Quest72264:OnDestroy()
    print("OnDestroy")
end

function Quest72264:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72264:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72264:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3188Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3161Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3160Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3188Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3161Data.alias, 0, true)
end

function Quest72264:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72264:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72264:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72264:OnSubStart7226411(arg1)
    print("OnSubStart7226411")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3159Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226411(arg1)
    print("OnSubFinish7226411")
    self:NarratorOnlyTask(datas.NarratorTable_722649901, nil, "")
end

function Quest72264:OnSubStart7226401(arg1)
    print("OnSubStart7226401")
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226401(arg1)
    print("OnSubFinish7226401")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72264:OnSubStart7226402(arg1)
    print("OnSubStart7226402")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226402(arg1)
    print("OnSubFinish7226402")
end

function Quest72264:OnSubStart7226403(arg1)
    print("OnSubStart7226403")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc12354Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226403(arg1)
    print("OnSubFinish7226403")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72264:OnSubStart7226412(arg1)
    print("OnSubStart7226412")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226412(arg1)
    print("OnSubFinish7226412")
end

function Quest72264:OnSubStart7226404(arg1)
    print("OnSubStart7226404")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226404(arg1)
    print("OnSubFinish7226404")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3160Data.alias)
end

function Quest72264:OnSubStart7226405(arg1)
    print("OnSubStart7226405")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226405(arg1)
    print("OnSubFinish7226405")
end

function Quest72264:OnSubStart7226410(arg1)
    print("OnSubStart7226410")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226410(arg1)
    print("OnSubFinish7226410")
end

function Quest72264:OnSubStart7226406(arg1)
    print("OnSubStart7226406")
    self:CreateQuestNpc(arg1, npcs.Npc12354Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226406(arg1)
    print("OnSubFinish7226406")
    self:SafeDestroyQuestNpc(npcs.Npc3160Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12354Data.alias, 3)
end

function Quest72264:OnSubStart7226407(arg1)
    print("OnSubStart7226407")
    self:DailyNpcSafeHideSelf(npcs.Npc3160Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226407(arg1)
    print("OnSubFinish7226407")
end

function Quest72264:OnSubStart7226408(arg1)
    print("OnSubStart7226408")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226408(arg1)
    print("OnSubFinish7226408")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3160Data.alias)
end

function Quest72264:OnSubStart7226409(arg1)
    print("OnSubStart7226409")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3160Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3188Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3161Data.alias, 1, true)
end

function Quest72264:OnSubFinish7226409(arg1)
    print("OnSubFinish7226409")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3160Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc3159Data.alias, 3)
end

return Quest72264
