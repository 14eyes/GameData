require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q45412Trigger = class("Q45412Trigger", GadgetActorProxy)
Q45412Trigger.defaultAlias = "Q45412Trigger"
local Q454ClientConfig = require("Quest/Client/Q454ClientConfig")

util.do_require("Quest/Share/Q454ShareConfig")
local v = AmborData
local v2 = RazorData
local v3 = WolfWoundData
function Q45412Trigger:OnPostDataPrepare() end

function Q45412Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(40, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q45412Trigger:TriggerIn()
    print("IN Q45412Trigger")
    local actor = actorMgr:GetActor(Q454ClientConfig.ActorAlias)
    actor:CreateQuestNpcById(45412, v2.ID)
    actor:GetQuestNpcActor(v2.Alias):DoFreeStyle(1120)
    actor:CreateQuestNpcById(45412, v.ID)
    actor:GetQuestNpcActor(v.Alias):DoFreeStyle(1230)
    actor:CreateQuestNpcById(45412, v3.ID)
    self:DestroySelf()
end

function Q45412Trigger:TriggerOut() end
return Q45412Trigger
