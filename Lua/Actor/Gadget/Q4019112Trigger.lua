require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019112Trigger = class("Q4019112Trigger", GadgetActorProxy)
Q4019112Trigger.defaultAlias = "Q4019112Trigger"
local Q40191ClientConfig = require("Quest/Client/Q40191ClientConfig")

local this
local subIDs = Q40191ClientConfig.SubIDs
local datas = Q40191ClientConfig.Datas
local npcs = Q40191ClientConfig.Npcs
local points = Q40191ClientConfig.Points

function Q4019112Trigger:OnPostDataPrepare()
    print("Q4019112Trigger - OnPostDataPrepare")
    this = self
end

function Q4019112Trigger:OnPostComponentPrepare()
    print("Q4019112Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40191)
end

function Q4019112Trigger:TriggerIn()
    print("Q4019112Trigger - TriggerIn")
    actorMgr:GetActor("40191"):TransmitPlayerWithDialogTextByQuestId(4019112, 2, datas.DialogIdsData40191, 0, nil, nil, nil)
    this:DestroySelf()
end

function Q4019112Trigger:PreTriggerIn()
    print("Q4019112Trigger - PreTriggerIn")
end

function Q4019112Trigger:LightUpTriggerIn()
    print("Q4019112Trigger - LightUpTriggerIn")
end

function Q4019112Trigger:TriggerOut()
    print("Q4019112Trigger - TriggerOut")
end

return Q4019112Trigger
