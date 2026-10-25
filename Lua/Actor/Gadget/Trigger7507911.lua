require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7507911 = class("Trigger7507911", GadgetActorProxy)
Trigger7507911.defaultAlias = "Trigger7507911"
local Q75079ClientConfig = require("Quest/Client/Q75079ClientConfig")

local this
local subIDs = Q75079ClientConfig.SubIDs
local datas = Q75079ClientConfig.Datas
local npcs = Q75079ClientConfig.Npcs
local points = Q75079ClientConfig.Points

function Trigger7507911:OnPostDataPrepare()
    print("Trigger7507911 - OnPostDataPrepare")
    this = self
end

function Trigger7507911:OnPostComponentPrepare()
    print("Trigger7507911 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75079)
end

function Trigger7507911:TriggerIn()
    print("Trigger7507911 - TriggerIn")
    actorUtils.FinishQuestID(false, 7507911)
    this:DestroySelf()
end

function Trigger7507911:PreTriggerIn()
    print("Trigger7507911 - PreTriggerIn")
end

function Trigger7507911:LightUpTriggerIn()
    print("Trigger7507911 - LightUpTriggerIn")
end

function Trigger7507911:TriggerOut()
    print("Trigger7507911 - TriggerOut")
end

return Trigger7507911
