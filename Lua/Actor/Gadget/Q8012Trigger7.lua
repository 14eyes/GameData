require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q8012Trigger7 = class("Q8012Trigger7", GadgetActorProxy)
Q8012Trigger7.defaultAlias = "Q8012Trigger7"
local Q8012ClientConfig = require("Quest/Client/Q8012ClientConfig")

local this
local subIDs = Q8012ClientConfig.SubIDs
local npcs = Q8012ClientConfig.Npcs
local datas = Q8012ClientConfig.Datas

function Q8012Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q8012Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q8012Trigger7:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("8012"):RequestInteraction(npcs.Npc13078Data.alias)
    this:DestroySelf()
end

function Q8012Trigger7:PreTriggerIn()
    print("PreTriggerIn")
end

function Q8012Trigger7:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q8012Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q8012Trigger7
