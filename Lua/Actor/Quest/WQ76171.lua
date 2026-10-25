require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76171 = class("Quest76171", QuestActorProxy)
Quest76171.defaultAlias = "Quest76171"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76171:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76171:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7617102"] = self.OnSubStart7617102, ["7617101"] = self.OnSubStart7617101}
end

function Quest76171:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7617102"] = self.OnSubFinish7617102, ["7617101"] = self.OnSubFinish7617101}
end

function Quest76171:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76171:Start()
    print("Start")
end

function Quest76171:OnDestroy()
    print("OnDestroy")
end

function Quest76171:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76171:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76171:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76171:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7617101_TalkTrigger", 76171)
end

function Quest76171:ActorDestroy(arg1, arg2)
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

function Quest76171:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76171:OnSubStart7617102(arg1)
    print("OnSubStart7617102")
end

function Quest76171:OnSubFinish7617102(arg1)
    print("OnSubFinish7617102")
end

function Quest76171:OnSubStart7617101(arg1)
    print("OnSubStart7617101")
    this:CreateQuestNpc(arg1, npcs.Npc7087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1327.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7041.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16476.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7617101_TalkTrigger", "Actor/Gadget/Q7617101_TalkTrigger", 70900002, 0, points._Q7617101_TalkTriggerPoint_.pos, points._Q7617101_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 76171)
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

function Quest76171:OnSubFinish7617101(arg1)
    print("OnSubFinish7617101")
    this:NpcDestroyImmediately(3, npcs.Npc7087.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7041.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7088.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16476.alias)
    this:DeployStoryByQuest(147617101)
    this:CallDelayByQuest("76171Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

return Quest76171
