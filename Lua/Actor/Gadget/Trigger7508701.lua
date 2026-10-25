require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508701 = class("Trigger7508701", GadgetActorProxy)
Trigger7508701.defaultAlias = "Trigger7508701"
local Q75087ClientConfig = require("Quest/Client/Q75087ClientConfig")

local this
local subIDs = Q75087ClientConfig.SubIDs
local datas = Q75087ClientConfig.Datas
local npcs = Q75087ClientConfig.Npcs
local points = Q75087ClientConfig.Points

function Trigger7508701:OnPostDataPrepare()
    print("Trigger7508701 - OnPostDataPrepare")
    this = self
end

function Trigger7508701:OnPostComponentPrepare()
    print("Trigger7508701 - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75087)
end

function Trigger7508701:TriggerIn()
    print("Trigger7508701 - TriggerIn")
    actorUtils.FinishQuestID(false, 7508701)
    this:DestroySelf()
end

function Trigger7508701:PreTriggerIn()
    print("Trigger7508701 - PreTriggerIn")
end

function Trigger7508701:LightUpTriggerIn()
    print("Trigger7508701 - LightUpTriggerIn")
end

function Trigger7508701:TriggerOut()
    print("Trigger7508701 - TriggerOut")
end

return Trigger7508701
