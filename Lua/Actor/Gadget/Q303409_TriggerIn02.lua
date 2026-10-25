require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303409_TriggerIn02 = class("Q303409_TriggerIn02", GadgetActorProxy)
Q303409_TriggerIn02.defaultAlias = "Q303409_TriggerIn02"
local Q3034ClientConfig = require("Quest/Client/Q3034ClientConfig")

local this
local subIDs = Q3034ClientConfig.SubIDs
local datas = Q3034ClientConfig.Datas
local npcs = Q3034ClientConfig.Npcs
local points = Q3034ClientConfig.Points

function Q303409_TriggerIn02:OnPostDataPrepare()
    print("Q303409_TriggerIn02 - OnPostDataPrepare")
    this = self
end

function Q303409_TriggerIn02:OnPostComponentPrepare()
    print("Q303409_TriggerIn02 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(34, 10, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3034)
end

function Q303409_TriggerIn02:TriggerIn()
    print("Q303409_TriggerIn02 - TriggerIn")
    actorMgr:GetActor("3034"):RequestInteraction(npcs.Npc16680.alias, "", true)
    this:DestroySelf()
end

function Q303409_TriggerIn02:PreTriggerIn()
    print("Q303409_TriggerIn02 - PreTriggerIn")
end

function Q303409_TriggerIn02:LightUpTriggerIn()
    print("Q303409_TriggerIn02 - LightUpTriggerIn")
end

function Q303409_TriggerIn02:TriggerOut()
    print("Q303409_TriggerIn02 - TriggerOut")
end

return Q303409_TriggerIn02
