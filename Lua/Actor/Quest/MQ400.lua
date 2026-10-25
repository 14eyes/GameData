require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest400 = class("Quest400", QuestActorProxy)
Quest400.defaultAlias = "Quest400"
local clientData
local shareData
local npc

function Quest400:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    npc = shareData.QuestData["40001"].npcs[1]
end

function Quest400:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["40001"] = self.OnSubStart40001
end

function Quest400:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["40001"] = self.OnSubFinish40001
end

function Quest400:OnSubStart40001(arg1)
    print("40001 Start:refresh wendy")
    self:CreateQuestNpc(arg1, npc.id)
    actorMgr:CreateActorWithPos("Q400Trigger", "Actor/Gadget/Q400Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q39604Wendy2").pos, sceneData:GetDummyPoint(3, "Q39604Wendy2").rot, true)
end

function Quest400:OnSubFinish40001(arg1)
    print("40001 Finish:Destroy wendy")
    local questNpcActor = self:GetQuestNpcActor(npc.alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest400:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk39607:Destroy Paimon")
        self:ActionSafeCall(function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor("Paimon")
            if questNpcActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end)
    end
end

function Quest400:Start() end
function Quest400:OnDestroy() end
return Quest400
