require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016216 = class("Q4016216", GadgetActorProxy)
Q4016216.defaultAlias = "Q4016216"
local Q40162ClientConfig = require("Quest/Client/Q40162ClientConfig")

local this
local subIDs = Q40162ClientConfig.SubIDs
local datas = Q40162ClientConfig.Datas
local npcs = Q40162ClientConfig.Npcs
local points = Q40162ClientConfig.Points

function Q4016216:OnPostDataPrepare()
    print("Q4016216 - OnPostDataPrepare")
    this = self
end

function Q4016216:OnPostComponentPrepare()
    print("Q4016216 - OnPostComponentPrepare")
    this:AddComponentTrigger(55, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40162)
end

function Q4016216:TriggerIn()
    print("Q4016216 - TriggerIn")
    actorUtils.FinishQuestID(false, 4016216)
    this:DestroySelf()
end

function Q4016216:PreTriggerIn()
    print("Q4016216 - PreTriggerIn")
end

function Q4016216:LightUpTriggerIn()
    print("Q4016216 - LightUpTriggerIn")
end

function Q4016216:TriggerOut()
    print("Q4016216 - TriggerOut")
end

return Q4016216
