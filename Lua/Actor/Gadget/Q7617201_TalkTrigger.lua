require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7617201_TalkTrigger = class("Q7617201_TalkTrigger", GadgetActorProxy)
Q7617201_TalkTrigger.defaultAlias = "Q7617201_TalkTrigger"
local Q76172ClientConfig = require("Quest/Client/Q76172ClientConfig")

local this
local subIDs = Q76172ClientConfig.SubIDs
local npcs = Q76172ClientConfig.Npcs
local points = Q76172ClientConfig.Points

function Q7617201_TalkTrigger:OnPostDataPrepare()
    print("Q7617201_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7617201_TalkTrigger:OnPostComponentPrepare()
    print("Q7617201_TalkTrigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(30, 15, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76172)
end

function Q7617201_TalkTrigger:TriggerIn()
    print("Q7617201_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76172"):RequestInteraction(npcs.Npc7087.alias, "", true)
    this:DestroySelf()
end

function Q7617201_TalkTrigger:PreTriggerIn()
    print("Q7617201_TalkTrigger - PreTriggerIn")
end

function Q7617201_TalkTrigger:LightUpTriggerIn()
    print("Q7617201_TalkTrigger - LightUpTriggerIn")
end

function Q7617201_TalkTrigger:TriggerOut()
    print("Q7617201_TalkTrigger - TriggerOut")
end

return Q7617201_TalkTrigger
