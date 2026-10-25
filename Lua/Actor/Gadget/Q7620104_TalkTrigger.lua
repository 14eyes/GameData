require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7620104_TalkTrigger = class("Q7620104_TalkTrigger", GadgetActorProxy)
Q7620104_TalkTrigger.defaultAlias = "Q7620104_TalkTrigger"
local Q76201ClientConfig = require("Quest/Client/Q76201ClientConfig")

local this
local subIDs = Q76201ClientConfig.SubIDs
local datas = Q76201ClientConfig.Datas
local npcs = Q76201ClientConfig.Npcs
local points = Q76201ClientConfig.Points

function Q7620104_TalkTrigger:OnPostDataPrepare()
    print("Q7620104_TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q7620104_TalkTrigger:OnPostComponentPrepare()
    print("Q7620104_TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76201)
end

function Q7620104_TalkTrigger:TriggerIn()
    print("Q7620104_TalkTrigger - TriggerIn")
    actorMgr:GetActor("76201"):RequestInteraction(npcs.Npc7036.alias, "", true)
    this:DestroySelf()
end

function Q7620104_TalkTrigger:PreTriggerIn()
    print("Q7620104_TalkTrigger - PreTriggerIn")
end

function Q7620104_TalkTrigger:LightUpTriggerIn()
    print("Q7620104_TalkTrigger - LightUpTriggerIn")
end

function Q7620104_TalkTrigger:TriggerOut()
    print("Q7620104_TalkTrigger - TriggerOut")
end

return Q7620104_TalkTrigger
