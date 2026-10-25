require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7515002 = class("Q7515002", GadgetActorProxy)
Q7515002.defaultAlias = "Q7515002"
local Q75150ClientConfig = require("Quest/Client/Q75150ClientConfig")

local this
local subIDs = Q75150ClientConfig.SubIDs
local datas = Q75150ClientConfig.Datas
local npcs = Q75150ClientConfig.Npcs

function Q7515002:OnPostDataPrepare()
    print("Q7515002 - OnPostDataPrepare")
    this = self
end

function Q7515002:OnPostComponentPrepare()
    print("Q7515002 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75150)
end

function Q7515002:TriggerIn()
    print("Q7515002 - TriggerIn")
    this:DestroySelf()
end

function Q7515002:PreTriggerIn()
    print("Q7515002 - PreTriggerIn")
end

function Q7515002:LightUpTriggerIn()
    print("Q7515002 - LightUpTriggerIn")
end

function Q7515002:TriggerOut()
    print("Q7515002 - TriggerOut")
end

return Q7515002
