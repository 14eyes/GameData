require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77202 = class("Quest77202", QuestActorProxy)
Quest77202.defaultAlias = "Quest77202"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77202:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77202:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7720205"] = self.OnSubStart7720205,
        ["7720206"] = self.OnSubStart7720206,
        ["7720201"] = self.OnSubStart7720201,
        ["7720202"] = self.OnSubStart7720202,
        ["7720203"] = self.OnSubStart7720203,
        ["7720207"] = self.OnSubStart7720207,
        ["7720204"] = self.OnSubStart7720204
    }
end

function Quest77202:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7720205"] = self.OnSubFinish7720205,
        ["7720206"] = self.OnSubFinish7720206,
        ["7720201"] = self.OnSubFinish7720201,
        ["7720202"] = self.OnSubFinish7720202,
        ["7720203"] = self.OnSubFinish7720203,
        ["7720207"] = self.OnSubFinish7720207,
        ["7720204"] = self.OnSubFinish7720204
    }
end

function Quest77202:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7720203"] = self.OnSubFailed7720203}
end

function Quest77202:Start()
    print("Start")
end

function Quest77202:OnDestroy()
    print("OnDestroy")
end

function Quest77202:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77202:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77202:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77202:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7720201Trigger", 77202)
end

function Quest77202:ActorDestroy(arg1, arg2)
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

function Quest77202:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77202:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77202:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77202:OnSubStart7720205(arg1)
    print("OnSubStart7720205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7720205, 0, 12, 1, npcs.Npc22654.id)
end

function Quest77202:OnSubFinish7720205(arg1)
    print("OnSubFinish7720205")
    this:NpcDestroyImmediately(3, npcs.Npc22654.alias)
end

function Quest77202:OnSubStart7720206(arg1)
    print("OnSubStart7720206")
    this:CreateQuestNpc(arg1, npcs.Npc22676.id, 0, false, 0)
end

function Quest77202:OnSubFinish7720206(arg1)
    print("OnSubFinish7720206")
    this:NpcDestroyImmediately(3, npcs.Npc22676.alias)
end

function Quest77202:OnSubStart7720201(arg1)
    print("OnSubStart7720201")
    this:CreateQuestNpc(arg1, npcs.Npc22653.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22653.alias, 77202):DoFreeStyle(4061, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7720201Trigger", "Actor/Gadget/Q7720201Trigger", 70900002, 0, points._Q7720201TriggerPoint_.pos, points._Q7720201TriggerPoint_.rot, true, false, 3, nil, 0, 77202)
end

function Quest77202:OnSubFinish7720201(arg1)
    print("OnSubFinish7720201")
end

function Quest77202:OnSubStart7720202(arg1)
    print("OnSubStart7720202")
    this:NpcCreateWithNpcTrigger(npcs.Npc22653.id, 0, 5, 7720202)
    this:GetQuestNpcActor(npcs.Npc22653.alias, 77202):DoFreeStyle(4061, true, nil, true, true, false, false)
end

function Quest77202:OnSubFinish7720202(arg1)
    print("OnSubFinish7720202")
    this:NpcDestroyImmediately(3, npcs.Npc22653.alias)
end

function Quest77202:OnSubStart7720203(arg1)
    print("OnSubStart7720203")
    this:CreateQuestNpc(arg1, npcs.Npc22674.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22674.alias, 77202):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest77202:OnSubFinish7720203(arg1)
    print("OnSubFinish7720203")
    this:NpcDestroyImmediately(3, npcs.Npc22674.alias)
end

function Quest77202:OnSubFailed7720203(arg1)
    print("OnSubFailed7720203")
    this:RecycleAllRes()
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77202:OnSubStart7720207(arg1)
    print("OnSubStart7720207")
end

function Quest77202:OnSubFinish7720207(arg1)
    print("OnSubFinish7720207")
end

function Quest77202:OnSubStart7720204(arg1)
    print("OnSubStart7720204")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7720204, 0, 20, 0.5, npcs.Npc22653.id)
end

function Quest77202:OnSubFinish7720204(arg1)
    print("OnSubFinish7720204")
    this:QuestNarratorTask(datas.NarratorWithId_97720204, nil)
end

return Quest77202
