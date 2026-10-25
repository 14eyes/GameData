require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76172 = class("Quest76172", QuestActorProxy)
Quest76172.defaultAlias = "Quest76172"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76172:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76172:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7617202"] = self.OnSubStart7617202, ["7617201"] = self.OnSubStart7617201}
end

function Quest76172:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7617202"] = self.OnSubFinish7617202, ["7617201"] = self.OnSubFinish7617201}
end

function Quest76172:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76172:Start()
    print("Start")
end

function Quest76172:OnDestroy()
    print("OnDestroy")
end

function Quest76172:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76172:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76172:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76172:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7617201_TalkTrigger", 76172)
end

function Quest76172:ActorDestroy(arg1, arg2)
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

function Quest76172:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76172:OnSubStart7617202(arg1)
    print("OnSubStart7617202")
end

function Quest76172:OnSubFinish7617202(arg1)
    print("OnSubFinish7617202")
end

function Quest76172:OnSubStart7617201(arg1)
    print("OnSubStart7617201")
    this:CreateQuestNpc(arg1, npcs.Npc7087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1327.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16476.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7617201_TalkTrigger", "Actor/Gadget/Q7617201_TalkTrigger", 70900002, 0, points._Q7617201_TalkTriggerPoint_.pos, points._Q7617201_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 76172)
    this:GetQuestNpcActor(npcs.Npc1327.alias):SetTransformEnable("PetEyes_Yellow_01", false)
end

function Quest76172:OnSubFinish7617201(arg1)
    print("OnSubFinish7617201")
    this:NpcDestroyImmediately(3, npcs.Npc7087.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1327.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7088.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16476.alias)
    this:DeployStoryByQuest(147617201)
    this:CallDelayByQuest("76172Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

return Quest76172
