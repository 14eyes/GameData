require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8012Trigger12 = class("Q8012Trigger12", GadgetActorProxy)
Q8012Trigger12.defaultAlias = "Q8012Trigger12"
local Q8012ClientConfig = require("Quest/Client/Q8012ClientConfig")

local this
local subIDs = Q8012ClientConfig.SubIDs
local npcs = Q8012ClientConfig.Npcs
local datas = Q8012ClientConfig.Datas

function Q8012Trigger12:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8012Trigger12:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8012Trigger12:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 801214)
    this:DestroySelf()
end

function Q8012Trigger12:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8012Trigger12:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8012Trigger12:TriggerOut()
    print("TriggerOut")
end

return Q8012Trigger12
