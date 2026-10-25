require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701128Trigger_Trans = class("Q701128Trigger_Trans", GadgetActorProxy)
Q701128Trigger_Trans.defaultAlias = "Q701128Trigger_Trans"
local Q7011ClientConfig = require("Quest/Client/Q7011ClientConfig")

local this
local subIDs = Q7011ClientConfig.SubIDs
local datas = Q7011ClientConfig.Datas
local npcs = Q7011ClientConfig.Npcs
local points = Q7011ClientConfig.Points

function Q701128Trigger_Trans:OnPostDataPrepare()
    print("Q701128Trigger_Trans - OnPostDataPrepare")
    this = self
end

function Q701128Trigger_Trans:OnPostComponentPrepare()
    print("Q701128Trigger_Trans - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7011)
end

function Q701128Trigger_Trans:TriggerIn()
    print("Q701128Trigger_Trans - TriggerIn")
    actorMgr:GetActor("7011"):TransmitPlayerWithQuestIdByData(701128, 1, datas.TransmitBlackData, nil, nil, nil)
    this:DestroySelf()
end

function Q701128Trigger_Trans:PreTriggerIn()
    print("Q701128Trigger_Trans - PreTriggerIn")
end

function Q701128Trigger_Trans:LightUpTriggerIn()
    print("Q701128Trigger_Trans - LightUpTriggerIn")
end

function Q701128Trigger_Trans:TriggerOut()
    print("Q701128Trigger_Trans - TriggerOut")
end

return Q701128Trigger_Trans
