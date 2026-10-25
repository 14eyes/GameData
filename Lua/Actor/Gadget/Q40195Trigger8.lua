require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40195Trigger8 = class("Q40195Trigger8", GadgetActorProxy)
Q40195Trigger8.defaultAlias = "Q40195Trigger8"
local Q40195ClientConfig = require("Quest/Client/Q40195ClientConfig")

local this
local subIDs = Q40195ClientConfig.SubIDs
local datas = Q40195ClientConfig.Datas
local npcs = Q40195ClientConfig.Npcs
local points = Q40195ClientConfig.Points

function Q40195Trigger8:OnPostDataPrepare()
    print("Q40195Trigger8 - OnPostDataPrepare")
    this = self
end

function Q40195Trigger8:OnPostComponentPrepare()
    print("Q40195Trigger8 - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40195)
end

function Q40195Trigger8:TriggerIn()
    print("Q40195Trigger8 - TriggerIn")
    actorMgr:GetActor("40195"):RequestInteraction(npcs.Npc1076.alias, "", true)
    this:DestroySelf()
end

function Q40195Trigger8:PreTriggerIn()
    print("Q40195Trigger8 - PreTriggerIn")
end

function Q40195Trigger8:LightUpTriggerIn()
    print("Q40195Trigger8 - LightUpTriggerIn")
end

function Q40195Trigger8:TriggerOut()
    print("Q40195Trigger8 - TriggerOut")
end

return Q40195Trigger8
