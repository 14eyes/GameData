require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302208Talk = class("Q1302208Talk", GadgetActorProxy)
Q1302208Talk.defaultAlias = "Q1302208Talk"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302208Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302208Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302208Talk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13022"):RequestInteraction(npcs.Npc1053Data.alias)
end

function Q1302208Talk:PreTriggerIn()
    print("PreTriggerIn")
end

function Q1302208Talk:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q1302208Talk:TriggerOut()
    print("TriggerOut")
end

return Q1302208Talk
