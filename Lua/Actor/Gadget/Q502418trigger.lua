require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q502418trigger = class("Q502418trigger", GadgetActorProxy)
Q502418trigger.defaultAlias = "Q502418trigger"
local Q5024ClientConfig = require("Quest/Client/Q5024ClientConfig")

local this
local subIDs = Q5024ClientConfig.SubIDs
local datas = Q5024ClientConfig.Datas
local npcs = Q5024ClientConfig.Npcs
local points = Q5024ClientConfig.Points

function Q502418trigger:OnPostDataPrepare()
    print("Q502418trigger - OnPostDataPrepare")
    this = self
end

function Q502418trigger:OnPostComponentPrepare()
    print("Q502418trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5024)
end

function Q502418trigger:TriggerIn()
    print("Q502418trigger - TriggerIn")
    actorMgr:GetActor("5024"):PlayerEnterDungeonWithData(1401, 2140, 502418, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q502418trigger:PreTriggerIn()
    print("Q502418trigger - PreTriggerIn")
end

function Q502418trigger:LightUpTriggerIn()
    print("Q502418trigger - LightUpTriggerIn")
end

function Q502418trigger:TriggerOut()
    print("Q502418trigger - TriggerOut")
end

return Q502418trigger
