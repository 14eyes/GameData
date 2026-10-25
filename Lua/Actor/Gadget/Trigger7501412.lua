require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Trigger7501412 = class("Trigger7501412", GadgetActorProxy)
Trigger7501412.defaultAlias = "Trigger7501412"
local Q75014ClientConfig = require("Quest/Client/Q75014ClientConfig")

local this
local subIDs = Q75014ClientConfig.SubIDs
local datas = Q75014ClientConfig.Datas
local npcs = Q75014ClientConfig.Npcs
local points = Q75014ClientConfig.Points

function Trigger7501412:OnPostDataPrepare()
    print("Trigger7501412 - OnPostDataPrepare")
    this = self
end

function Trigger7501412:OnPostComponentPrepare()
    print("Trigger7501412 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75014)
end

function Trigger7501412:TriggerIn()
    print("Trigger7501412 - TriggerIn")
    actorUtils.FinishQuestID(false, 7501412)
    this:DestroySelf()
end

function Trigger7501412:PreTriggerIn()
    print("Trigger7501412 - PreTriggerIn")
end

function Trigger7501412:LightUpTriggerIn()
    print("Trigger7501412 - LightUpTriggerIn")
end

function Trigger7501412:TriggerOut()
    print("Trigger7501412 - TriggerOut")
end

return Trigger7501412
