require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601612igger = class("Q7601612igger", GadgetActorProxy)
Q7601612igger.defaultAlias = "Q7601612igger"
local Q76016ClientConfig = require("Quest/Client/Q76016ClientConfig")

local this
local subIDs = Q76016ClientConfig.SubIDs
local datas = Q76016ClientConfig.Datas
local npcs = Q76016ClientConfig.Npcs
local points = Q76016ClientConfig.Points

function Q7601612igger:OnPostDataPrepare()
    print("Q7601612igger - OnPostDataPrepare")
    this = self
end

function Q7601612igger:OnPostComponentPrepare()
    print("Q7601612igger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76016)
end

function Q7601612igger:TriggerIn()
    print("Q7601612igger - TriggerIn")
    this:DestroySelf()
end

function Q7601612igger:PreTriggerIn()
    print("Q7601612igger - PreTriggerIn")
end

function Q7601612igger:LightUpTriggerIn()
    print("Q7601612igger - LightUpTriggerIn")
end

function Q7601612igger:TriggerOut()
    print("Q7601612igger - TriggerOut")
end

return Q7601612igger
