require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701126Trigger_Trans = class("Q701126Trigger_Trans", GadgetActorProxy)
Q701126Trigger_Trans.defaultAlias = "Q701126Trigger_Trans"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701126Trigger_Trans:OnPostDataPrepare()
    print("Q701126Trigger_Trans - OnPostDataPrepare")
    this = self
end

function Q701126Trigger_Trans:OnPostComponentPrepare()
    print("Q701126Trigger_Trans - OnPostComponentPrepare")
    this:AddComponentTrigger(28.300291, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701126Trigger_Trans:TriggerIn()
    print("Q701126Trigger_Trans - TriggerIn")
    actorMgr:GetActor("7011"):TransmitPlayerWithQuestIdByData(701126, 1, datas.TransmitBlackData, nil, nil, nil)
end

function Q701126Trigger_Trans:PreTriggerIn()
    print("Q701126Trigger_Trans - PreTriggerIn")
end

function Q701126Trigger_Trans:LightUpTriggerIn()
    print("Q701126Trigger_Trans - LightUpTriggerIn")
end

function Q701126Trigger_Trans:TriggerOut()
    print("Q701126Trigger_Trans - TriggerOut")
end

return Q701126Trigger_Trans
