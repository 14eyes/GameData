require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8012Trigger13 = class("Q8012Trigger13", GadgetActorProxy)
Q8012Trigger13.defaultAlias = "Q8012Trigger13"
local Q8012ClientConfig = require("Quest/Client/Q8012ClientConfig")

local this
local subIDs = Q8012ClientConfig.SubIDs
local npcs = Q8012ClientConfig.Npcs
local datas = Q8012ClientConfig.Datas

function Q8012Trigger13:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8012Trigger13:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8012Trigger13:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 801214)
    this:DestroySelf()
end

function Q8012Trigger13:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8012Trigger13:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8012Trigger13:TriggerOut()
    print("TriggerOut")
end

return Q8012Trigger13
