require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601108Trigger_Trans = class("Q601108Trigger_Trans", GadgetActorProxy)
Q601108Trigger_Trans.defaultAlias = "Q601108Trigger_Trans"
local Q6011ClientConfig = require("Quest/Client/Q6011ClientConfig")

local this
local subIDs = Q6011ClientConfig.SubIDs
local datas = Q6011ClientConfig.Datas
local npcs = Q6011ClientConfig.Npcs
local points = Q6011ClientConfig.Points

function Q601108Trigger_Trans:OnPostDataPrepare()
    print("Q601108Trigger_Trans - OnPostDataPrepare")
    this = self
end

function Q601108Trigger_Trans:OnPostComponentPrepare()
    print("Q601108Trigger_Trans - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6011)
end

function Q601108Trigger_Trans:TriggerIn()
    print("Q601108Trigger_Trans - TriggerIn")
    actorMgr:GetActor("6011"):TransmitPlayerWithQuestIdByData(601108, 8, datas.TransmitData601107, nil, nil, nil)
    this:DestroySelf()
end

function Q601108Trigger_Trans:PreTriggerIn()
    print("Q601108Trigger_Trans - PreTriggerIn")
end

function Q601108Trigger_Trans:LightUpTriggerIn()
    print("Q601108Trigger_Trans - LightUpTriggerIn")
end

function Q601108Trigger_Trans:TriggerOut()
    print("Q601108Trigger_Trans - TriggerOut")
end

return Q601108Trigger_Trans
