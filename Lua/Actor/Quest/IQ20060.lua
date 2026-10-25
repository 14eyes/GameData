require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20060 = class("Quest20060", QuestActorProxy)
Quest20060.defaultAlias = "Quest20060"
local clientData

function Quest20060:OnDataLoaded()
    clientData = self.clientData
end

function Quest20060:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2006001"] = self.OnSubStart2006001
    self.subStartHandlers["2006002"] = self.OnSubStart2006002
    self.subStartHandlers["2006003"] = self.OnSubStart2006003
    self.subStartHandlers["2006004"] = self.OnSubStart2006004
    self.subStartHandlers["2006005"] = self.OnSubStart2006005
    self.subStartHandlers["2006006"] = self.OnSubStart2006006
    self.subStartHandlers["2006007"] = self.OnSubStart2006007
    self.subStartHandlers["2006008"] = self.OnSubStart2006008
    self.subStartHandlers["2006009"] = self.OnSubStart2006009
    self.subStartHandlers["2006010"] = self.OnSubStart2006010
end

function Quest20060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2006001"] = self.OnSubFinish2006001
    self.subFinishHandlers["2006002"] = self.OnSubFinish2006002
    self.subFinishHandlers["2006003"] = self.OnSubFinish2006003
    self.subFinishHandlers["2006004"] = self.OnSubFinish2006004
    self.subFinishHandlers["2006005"] = self.OnSubFinish2006005
    self.subFinishHandlers["2006006"] = self.OnSubFinish2006006
    self.subFinishHandlers["2006007"] = self.OnSubFinish2006007
    self.subFinishHandlers["2006008"] = self.OnSubFinish2006008
    self.subFinishHandlers["2006009"] = self.OnSubFinish2006009
    self.subFinishHandlers["2006010"] = self.OnSubFinish2006010
end

function Quest20060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2006001"] = self.OnSubFailed2006001
    self.subFailedHandlers["2006002"] = self.OnSubFailed2006002
    self.subFailedHandlers["2006003"] = self.OnSubFailed2006003
    self.subFailedHandlers["2006004"] = self.OnSubFailed2006004
    self.subFailedHandlers["2006005"] = self.OnSubFailed2006005
    self.subFailedHandlers["2006006"] = self.OnSubFailed2006006
    self.subFailedHandlers["2006007"] = self.OnSubFailed2006007
    self.subFailedHandlers["2006008"] = self.OnSubFailed2006008
    self.subFailedHandlers["2006009"] = self.OnSubFailed2006009
    self.subFailedHandlers["2006010"] = self.OnSubFailed2006010
end

function Quest20060:OnSubStart2006001(arg1) end
function Quest20060:OnSubFinish2006001(arg1) end
function Quest20060:OnSubFailed2006001(arg1) end

function Quest20060:OnSubStart2006002(arg1)
    self:NarratorOnlyTask(clientData.FlowerNotEnough)
end

function Quest20060:OnSubFinish2006002(arg1)
    self:NarratorOnlyTask(clientData.FlowerEnough)
end

function Quest20060:OnSubFailed2006002(arg1) end
function Quest20060:OnSubStart2006003(arg1) end
function Quest20060:OnSubFinish2006003(arg1) end
function Quest20060:OnSubFailed2006003(arg1) end

function Quest20060:OnSubStart2006004(arg1)
    self:NarratorOnlyTask(clientData.FlowerEnough2)
end

function Quest20060:OnSubFinish2006004(arg1) end
function Quest20060:OnSubFailed2006004(arg1) end
function Quest20060:OnSubStart2006005(arg1) end
function Quest20060:OnSubFinish2006005(arg1) end
function Quest20060:OnSubFailed2006005(arg1) end

function Quest20060:OnSubStart2006006(arg1)
    actorMgr:CreateActorWithPos("Q20060Trigger", "Actor/Gadget/Q20060Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "NpcMaleInsomniaStand10Born").pos, sceneData:GetDummyPoint(3, "NpcMaleInsomniaStand10Born").rot, true)
end

function Quest20060:OnSubFinish2006006(arg1)
    local actor = actorMgr:GetActor("Q20060Trigger")
    if actor ~= nil then
        actor:Destroy()
    end
end

function Quest20060:OnSubFailed2006006(arg1) end
function Quest20060:OnSubStart2006007(arg1) end
function Quest20060:OnSubFinish2006007(arg1) end
function Quest20060:OnSubFailed2006007(arg1) end
function Quest20060:OnSubStart2006008(arg1) end
function Quest20060:OnSubFinish2006008(arg1) end
function Quest20060:OnSubFailed2006008(arg1) end

function Quest20060:OnSubStart2006009(arg1)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, function(arg1)
        arg1:RequestInteractionForceAlias("Npc1473")
    end)
end

function Quest20060:OnSubFinish2006009(arg1) end
function Quest20060:OnSubFailed2006009(arg1) end
function Quest20060:InvokeOnInteraction(arg1) end

function Quest20060:OnMainCanceled()
    local actor = actorMgr:GetActor("Q20060Trigger")
    if actor ~= nil then
        actor:Destroy()
    end
end

function Quest20060:Start() end
function Quest20060:OnDestroy() end
return Quest20060
