require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016226 = class("Q4016226", GadgetActorProxy)
Q4016226.defaultAlias = "Q4016226"
local Q40162ClientConfig = require("Quest/Client/Q40162ClientConfig")

local this
local subIDs = Q40162ClientConfig.SubIDs
local datas = Q40162ClientConfig.Datas
local npcs = Q40162ClientConfig.Npcs
local points = Q40162ClientConfig.Points

function Q4016226:OnPostDataPrepare()
    print("Q4016226 - OnPostDataPrepare")
    this = self
end

function Q4016226:OnPostComponentPrepare()
    print("Q4016226 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40162)
end

function Q4016226:TriggerIn()
    print("Q4016226 - TriggerIn")
    actorUtils.FinishQuestID(false, 4016226)
    this:DestroySelf()
end

function Q4016226:PreTriggerIn()
    print("Q4016226 - PreTriggerIn")
end

function Q4016226:LightUpTriggerIn()
    print("Q4016226 - LightUpTriggerIn")
end

function Q4016226:TriggerOut()
    print("Q4016226 - TriggerOut")
end

return Q4016226
