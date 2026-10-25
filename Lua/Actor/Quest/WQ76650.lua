require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76650 = class("Quest76650", QuestActorProxy)
Quest76650.defaultAlias = "Quest76650"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76650:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76650:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7665006"] = self.OnSubStart7665006,
        ["7665001"] = self.OnSubStart7665001,
        ["7665002"] = self.OnSubStart7665002,
        ["7665003"] = self.OnSubStart7665003,
        ["7665004"] = self.OnSubStart7665004,
        ["7665005"] = self.OnSubStart7665005
    }
end

function Quest76650:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7665006"] = self.OnSubFinish7665006,
        ["7665001"] = self.OnSubFinish7665001,
        ["7665002"] = self.OnSubFinish7665002,
        ["7665003"] = self.OnSubFinish7665003,
        ["7665004"] = self.OnSubFinish7665004,
        ["7665005"] = self.OnSubFinish7665005
    }
end

function Quest76650:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7665003"] = self.OnSubFailed7665003}
end

function Quest76650:Start()
    print("Start")
end

function Quest76650:OnDestroy()
    print("OnDestroy")
end

function Quest76650:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76650:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76650:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76650:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76650Trigger01")
end

function Quest76650:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76650:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76650:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76650:OnSubStart7665006(arg1)
    print("OnSubStart7665006")
    actorMgr:CreateActorWithPos("Q76650Trigger01", "Actor/Gadget/Q76650Trigger01", 70900002, 0, points._Q76650Trigger01Point_.pos, points._Q76650Trigger01Point_.rot, true, false, 3)
end

function Quest76650:OnSubFinish7665006(arg1)
    print("OnSubFinish7665006")
end

function Quest76650:OnSubStart7665001(arg1)
    print("OnSubStart7665001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1315.id, 0, 10, 7665001)
    this:GetQuestNpcActor(npcs.Npc1315.alias, 76650):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15521.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15522.id, 0, false, 0)
end

function Quest76650:OnSubFinish7665001(arg1)
    print("OnSubFinish7665001")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15521.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15522.alias, 3)
end

function Quest76650:OnSubStart7665002(arg1)
    print("OnSubStart7665002")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7665002, 0, 10, 1, npcs.Npc1315.id)
end

function Quest76650:OnSubFinish7665002(arg1)
    print("OnSubFinish7665002")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
end

function Quest76650:OnSubStart7665003(arg1)
    print("OnSubStart7665003")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(147665000)
    end)
end

function Quest76650:OnSubFinish7665003(arg1)
    print("OnSubFinish7665003")
    this:CancelStoryByQuest(147665000)
end

function Quest76650:OnSubFailed7665003(arg1)
    print("OnSubFailed7665003")
    this:CancelStoryByQuest(147665000)
end

function Quest76650:OnSubStart7665004(arg1)
    print("OnSubStart7665004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7665004, 0, 30, 1, npcs.Npc1315.id)
end

function Quest76650:OnSubFinish7665004(arg1)
    print("OnSubFinish7665004")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData1, nil, nil, nil)
end

function Quest76650:OnSubStart7665005(arg1)
    print("OnSubStart7665005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7665005, 0, 10, 1, npcs.Npc1315.id)
end

function Quest76650:OnSubFinish7665005(arg1)
    print("OnSubFinish7665005")
    this:SafeDestroyQuestNpc(npcs.Npc1315.alias, 3)
end

return Quest76650
