require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7501405 = class("Trigger7501405", GadgetActorProxy)
Trigger7501405.defaultAlias = "Trigger7501405"
local Q75014ClientConfig = require("Quest/Client/Q75014ClientConfig")

local this
local subIDs = Q75014ClientConfig.SubIDs
local datas = Q75014ClientConfig.Datas
local npcs = Q75014ClientConfig.Npcs
local points = Q75014ClientConfig.Points

function Trigger7501405:OnPostDataPrepare()
    print("Trigger7501405 - OnPostDataPrepare")
    this = self
end

function Trigger7501405:OnPostComponentPrepare()
    print("Trigger7501405 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75014)
end

function Trigger7501405:TriggerIn()
    print("Trigger7501405 - TriggerIn")
    actorUtils.FinishQuestID(false, 7501405)
    this:DestroySelf()
end

function Trigger7501405:PreTriggerIn()
    print("Trigger7501405 - PreTriggerIn")
end

function Trigger7501405:LightUpTriggerIn()
    print("Trigger7501405 - LightUpTriggerIn")
end

function Trigger7501405:TriggerOut()
    print("Trigger7501405 - TriggerOut")
end

return Trigger7501405
