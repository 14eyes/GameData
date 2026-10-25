require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701126Trigger = class("Q701126Trigger", GadgetActorProxy)
Q701126Trigger.defaultAlias = "Q701126Trigger"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701126Trigger:OnPostDataPrepare()
    print("Q701126Trigger - OnPostDataPrepare")
    this = self
end

function Q701126Trigger:OnPostComponentPrepare()
    print("Q701126Trigger - OnPostComponentPrepare")
    this:AddPolygonTrigger(0, "7_0_AQ701126_RollbackRegeion_01", self.TriggerIn, self.TriggerOut, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701126Trigger:TriggerIn()
    print("Q701126Trigger - TriggerIn")
    actorMgr:GetActor("7011"):TransmitPlayerWithQuestIdByData(701126, 1, datas.TransmitBlackData, nil, nil, nil)
end

function Q701126Trigger:PreTriggerIn()
    print("Q701126Trigger - PreTriggerIn")
end

function Q701126Trigger:LightUpTriggerIn()
    print("Q701126Trigger - LightUpTriggerIn")
end

function Q701126Trigger:TriggerOut()
    print("Q701126Trigger - TriggerOut")
end

return Q701126Trigger
