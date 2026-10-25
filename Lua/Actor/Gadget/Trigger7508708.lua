require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7508708 = class("Trigger7508708", GadgetActorProxy)
Trigger7508708.defaultAlias = "Trigger7508708"
local Q75087ClientConfig = require("Quest/Client/Q75087ClientConfig")

local this
local subIDs = Q75087ClientConfig.SubIDs
local datas = Q75087ClientConfig.Datas
local npcs = Q75087ClientConfig.Npcs
local points = Q75087ClientConfig.Points

function Trigger7508708:OnPostDataPrepare()
    print("Trigger7508708 - OnPostDataPrepare")
    this = self
end

function Trigger7508708:OnPostComponentPrepare()
    print("Trigger7508708 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75087)
end

function Trigger7508708:TriggerIn()
    print("Trigger7508708 - TriggerIn")
    actorUtils.FinishQuestID(false, 7508708)
    this:DestroySelf()
end

function Trigger7508708:PreTriggerIn()
    print("Trigger7508708 - PreTriggerIn")
end

function Trigger7508708:LightUpTriggerIn()
    print("Trigger7508708 - LightUpTriggerIn")
end

function Trigger7508708:TriggerOut()
    print("Trigger7508708 - TriggerOut")
end

return Trigger7508708
