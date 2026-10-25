require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7501407 = class("Trigger7501407", GadgetActorProxy)
Trigger7501407.defaultAlias = "Trigger7501407"
local Q75014ClientConfig = require("Quest/Client/Q75014ClientConfig")

local this
local subIDs = Q75014ClientConfig.SubIDs
local datas = Q75014ClientConfig.Datas
local npcs = Q75014ClientConfig.Npcs
local points = Q75014ClientConfig.Points

function Trigger7501407:OnPostDataPrepare()
    print("Trigger7501407 - OnPostDataPrepare")
    this = self
end

function Trigger7501407:OnPostComponentPrepare()
    print("Trigger7501407 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75014)
end

function Trigger7501407:TriggerIn()
    print("Trigger7501407 - TriggerIn")
    actorUtils.FinishQuestID(false, 7501406)
    this:DestroySelf()
end

function Trigger7501407:PreTriggerIn()
    print("Trigger7501407 - PreTriggerIn")
end

function Trigger7501407:LightUpTriggerIn()
    print("Trigger7501407 - LightUpTriggerIn")
end

function Trigger7501407:TriggerOut()
    print("Trigger7501407 - TriggerOut")
end

return Trigger7501407
