require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1302218Talk = class("Q1302218Talk", GadgetActorProxy)
Q1302218Talk.defaultAlias = "Q1302218Talk"
local Q13022ClientConfig = require("Quest/Client/Q13022ClientConfig")

local this
local subIDs = Q13022ClientConfig.SubIDs
local npcs = Q13022ClientConfig.Npcs

function Q1302218Talk:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q1302218Talk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1302218Talk:TriggerIn()
    print("TriggerIn")
end

function Q1302218Talk:TriggerOut()
    print("TriggerOut")
end

function Q1302218Talk:LightUpTriggerIn()
    print("LightUpTriggerIn")
    actorMgr:GetActor("13022"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("13022"):RequestInteraction(npcs.Npc1053Data.alias)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q1302218Talk:PreTriggerIn()
    print("PreTriggerIn")
end

return Q1302218Talk
