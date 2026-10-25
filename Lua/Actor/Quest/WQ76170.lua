require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76170 = class("Quest76170", QuestActorProxy)
Quest76170.defaultAlias = "Quest76170"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76170:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76170:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7617002"] = self.OnSubStart7617002, ["7617001"] = self.OnSubStart7617001}
end

function Quest76170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7617002"] = self.OnSubFinish7617002, ["7617001"] = self.OnSubFinish7617001}
end

function Quest76170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76170:Start()
    print("Start")
end

function Quest76170:OnDestroy()
    print("OnDestroy")
end

function Quest76170:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76170:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76170:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76170:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7617001_TalkTrigger", 76170)
end

function Quest76170:ActorDestroy(arg1, arg2)
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

function Quest76170:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76170:OnSubStart7617002(arg1)
    print("OnSubStart7617002")
end

function Quest76170:OnSubFinish7617002(arg1)
    print("OnSubFinish7617002")
end

function Quest76170:OnSubStart7617001(arg1)
    print("OnSubStart7617001")
    this:CreateQuestNpc(arg1, npcs.Npc7087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1327.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7041.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16476.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7617001_TalkTrigger", "Actor/Gadget/Q7617001_TalkTrigger", 70900002, 0, points._Q7617001_TalkTriggerPoint_.pos, points._Q7617001_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 76170)
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

function Quest76170:OnSubFinish7617001(arg1)
    print("OnSubFinish7617001")
    this:NpcDestroyImmediately(3, npcs.Npc7087.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7041.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7088.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16476.alias)
    this:DeployStoryByQuest(147617001)
    this:CallDelayByQuest("76170Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

return Quest76170
