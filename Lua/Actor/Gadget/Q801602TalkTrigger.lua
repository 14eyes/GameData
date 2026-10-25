require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801602TalkTrigger = class("Q801602TalkTrigger", GadgetActorProxy)
Q801602TalkTrigger.defaultAlias = "Q801602TalkTrigger"
local Q8016ClientConfig = require("Quest/Client/Q8016ClientConfig")

local this
local subIDs = Q8016ClientConfig.SubIDs
local datas = Q8016ClientConfig.Datas
local npcs = Q8016ClientConfig.Npcs
local points = Q8016ClientConfig.Points

function Q801602TalkTrigger:OnPostDataPrepare()
    print("Q801602TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q801602TalkTrigger:OnPostComponentPrepare()
    print("Q801602TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8016)
end

function Q801602TalkTrigger:TriggerIn()
    print("Q801602TalkTrigger - TriggerIn")
    actorMgr:GetActor("8016"):RequestInteraction(npcs.Npc15205.alias, "", true)
    this:DestroySelf()
end

function Q801602TalkTrigger:PreTriggerIn()
    print("Q801602TalkTrigger - PreTriggerIn")
end

function Q801602TalkTrigger:LightUpTriggerIn()
    print("Q801602TalkTrigger - LightUpTriggerIn")
end

function Q801602TalkTrigger:TriggerOut()
    print("Q801602TalkTrigger - TriggerOut")
end

return Q801602TalkTrigger
