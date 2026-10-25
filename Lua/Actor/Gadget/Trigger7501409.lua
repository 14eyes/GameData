require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7501409 = class("Trigger7501409", GadgetActorProxy)
Trigger7501409.defaultAlias = "Trigger7501409"
local Q75014ClientConfig = require("Quest/Client/Q75014ClientConfig")

local this
local subIDs = Q75014ClientConfig.SubIDs
local datas = Q75014ClientConfig.Datas
local npcs = Q75014ClientConfig.Npcs
local points = Q75014ClientConfig.Points

function Trigger7501409:OnPostDataPrepare()
    print("Trigger7501409 - OnPostDataPrepare")
    this = self
end

function Trigger7501409:OnPostComponentPrepare()
    print("Trigger7501409 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75014)
end

function Trigger7501409:TriggerIn()
    print("Trigger7501409 - TriggerIn")
    actorUtils.FinishQuestID(false, 7501409)
    this:DestroySelf()
end

function Trigger7501409:PreTriggerIn()
    print("Trigger7501409 - PreTriggerIn")
end

function Trigger7501409:LightUpTriggerIn()
    print("Trigger7501409 - LightUpTriggerIn")
end

function Trigger7501409:TriggerOut()
    print("Trigger7501409 - TriggerOut")
end

return Trigger7501409
