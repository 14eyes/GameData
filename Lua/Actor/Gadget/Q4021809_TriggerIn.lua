require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4021809_TriggerIn = class("Q4021809_TriggerIn", GadgetActorProxy)
Q4021809_TriggerIn.defaultAlias = "Q4021809_TriggerIn"
local Q40218ClientConfig = require("Quest/Client/Q40218ClientConfig")

local this
local subIDs = Q40218ClientConfig.SubIDs
local datas = Q40218ClientConfig.Datas
local npcs = Q40218ClientConfig.Npcs
local points = Q40218ClientConfig.Points

function Q4021809_TriggerIn:OnPostDataPrepare()
    print("Q4021809_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q4021809_TriggerIn:OnPostComponentPrepare()
    print("Q4021809_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40218)
end

function Q4021809_TriggerIn:TriggerIn()
    print("Q4021809_TriggerIn - TriggerIn")
    actorUtils.FinishQuestID(false, 4021809)
    this:DestroySelf()
end

function Q4021809_TriggerIn:PreTriggerIn()
    print("Q4021809_TriggerIn - PreTriggerIn")
end

function Q4021809_TriggerIn:LightUpTriggerIn()
    print("Q4021809_TriggerIn - LightUpTriggerIn")
end

function Q4021809_TriggerIn:TriggerOut()
    print("Q4021809_TriggerIn - TriggerOut")
end

return Q4021809_TriggerIn
