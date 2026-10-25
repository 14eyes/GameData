require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303118Triggerchuansong = class("Q303118Triggerchuansong", GadgetActorProxy)
Q303118Triggerchuansong.defaultAlias = "Q303118Triggerchuansong"
local Q3031ClientConfig = require("Quest/Client/Q3031ClientConfig")

local this
local subIDs = Q3031ClientConfig.SubIDs
local npcs = Q3031ClientConfig.Npcs
local datas = Q3031ClientConfig.Datas

function Q303118Triggerchuansong:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q303118Triggerchuansong:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q303118Triggerchuansong:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3031"):TransmitPlayerByQuestId(303118, 4)
end

function Q303118Triggerchuansong:PreTriggerIn()
    print("PreTriggerIn")
end

function Q303118Triggerchuansong:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q303118Triggerchuansong:TriggerOut()
    print("TriggerOut")
end

return Q303118Triggerchuansong
