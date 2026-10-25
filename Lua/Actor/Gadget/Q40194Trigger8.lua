require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40194Trigger8 = class("Q40194Trigger8", GadgetActorProxy)
Q40194Trigger8.defaultAlias = "Q40194Trigger8"
local Q40194ClientConfig = require("Quest/Client/Q40194ClientConfig")

local this
local subIDs = Q40194ClientConfig.SubIDs
local datas = Q40194ClientConfig.Datas
local npcs = Q40194ClientConfig.Npcs
local points = Q40194ClientConfig.Points

function Q40194Trigger8:OnPostDataPrepare()
    print("Q40194Trigger8 - OnPostDataPrepare")
    this = self
end

function Q40194Trigger8:OnPostComponentPrepare()
    print("Q40194Trigger8 - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40194)
end

function Q40194Trigger8:TriggerIn()
    print("Q40194Trigger8 - TriggerIn")
    actorMgr:GetActor("40194"):RequestInteraction(npcs.Npc1307.alias, "", true)
    this:DestroySelf()
end

function Q40194Trigger8:PreTriggerIn()
    print("Q40194Trigger8 - PreTriggerIn")
end

function Q40194Trigger8:LightUpTriggerIn()
    print("Q40194Trigger8 - LightUpTriggerIn")
end

function Q40194Trigger8:TriggerOut()
    print("Q40194Trigger8 - TriggerOut")
end

return Q40194Trigger8
