require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21014 = class("Quest21014", QuestActorProxy)
Quest21014.defaultAlias = "Quest21014"
local Q21014ClientConfig = require("Quest/Client/Q21014ClientConfig")

function Quest21014:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2101400"] = self.OnSubStart2101400
end

function Quest21014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2101400"] = self.OnSubFinish2101400
end

function Quest21014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2101400"] = self.OnSubFailed2101400
end

function Quest21014:OnSubStart2101400(arg1)
    actorMgr:CreateActorWithPos("Q2101400Trigger", "Actor/Gadget/Q2101400Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q21014_ShowLiYueCutScene").pos, sceneData:GetDummyPoint(3, "Q21014_ShowLiYueCutScene").rot, true, false)
end

function Quest21014:OnSubFinish2101400(arg1)
    self:PlayCutscene(Q21014ClientConfig.InterData.Cutscene1)
end

function Quest21014:OnSubFailed2101400(arg1) end
function Quest21014:Start() end
function Quest21014:OnDestroy() end
return Quest21014
