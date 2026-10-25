require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77153 = class("Quest77153", QuestActorProxy)
Quest77153.defaultAlias = "Quest77153"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77153:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77153:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7715305"] = self.OnSubStart7715305,
        ["7715301"] = self.OnSubStart7715301,
        ["7715303"] = self.OnSubStart7715303,
        ["7715304"] = self.OnSubStart7715304,
        ["7715302"] = self.OnSubStart7715302
    }
end

function Quest77153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7715305"] = self.OnSubFinish7715305,
        ["7715301"] = self.OnSubFinish7715301,
        ["7715303"] = self.OnSubFinish7715303,
        ["7715304"] = self.OnSubFinish7715304,
        ["7715302"] = self.OnSubFinish7715302
    }
end

function Quest77153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7715304"] = self.OnSubFailed7715304, ["7715302"] = self.OnSubFailed7715302}
end

function Quest77153:Start()
    print("Start")
end

function Quest77153:OnDestroy()
    print("OnDestroy")
end

function Quest77153:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77153:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77153:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77153:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7715303Trigger", 77153)
end

function Quest77153:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77153:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77153:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77153:OnSubStart7715305(arg1)
    print("OnSubStart7715305")
end

function Quest77153:OnSubFinish7715305(arg1)
    print("OnSubFinish7715305")
end

function Quest77153:OnSubStart7715301(arg1)
    print("OnSubStart7715301")
    this:CreateQuestNpc(arg1, npcs.Npc7705.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7705.alias, 77153):DoFreeStyle(4180, true, nil, true, true, false, false)
end

function Quest77153:OnSubFinish7715301(arg1)
    print("OnSubFinish7715301")
end

function Quest77153:OnSubStart7715303(arg1)
    print("OnSubStart7715303")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7715303, 0, 50, 1, npcs.Npc22476.id)
end

function Quest77153:OnSubFinish7715303(arg1)
    print("OnSubFinish7715303")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc22476.alias)
end

function Quest77153:OnSubStart7715304(arg1)
    print("OnSubStart7715304")
    this:CreateQuestNpc(arg1, npcs.Npc7705.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7705.alias, 77153):DoFreeStyle(1160, true, nil, true, true, false, false)
end

function Quest77153:OnSubFinish7715304(arg1)
    print("OnSubFinish7715304")
end

function Quest77153:OnSubFailed7715304(arg1)
    print("OnSubFailed7715304")
    this:RecycleAllRes()
end

function Quest77153:OnSubStart7715302(arg1)
    print("OnSubStart7715302")
end

function Quest77153:OnSubFinish7715302(arg1)
    print("OnSubFinish7715302")
end

function Quest77153:OnSubFailed7715302(arg1)
    print("OnSubFailed7715302")
    this:RecycleAllRes()
end

return Quest77153
