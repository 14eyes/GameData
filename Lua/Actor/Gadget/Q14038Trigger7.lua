require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14038Trigger7 = class("Q14038Trigger7", GadgetActorProxy)
Q14038Trigger7.defaultAlias = "Q14038Trigger7"
local Q14038ClientConfig = require("Quest/Client/Q14038ClientConfig")

local this
local subIDs = Q14038ClientConfig.SubIDs
local npcs = Q14038ClientConfig.Npcs
local points = Q14038ClientConfig.Points
local datas = Q14038ClientConfig.Datas

function Q14038Trigger7:OnPostDataPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger7] OnPostDataPrepare")
    this = self
end

function Q14038Trigger7:OnPostComponentPrepare()
    print("[MainId: 14038][Trigger: Q14038Trigger7] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14038)
end

function Q14038Trigger7:TriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger7] TriggerIn")
    local actor = actorMgr:GetActor("14038")
    actor:RequestInteraction(npcs.Npc14116Data.alias, "", true)
    actor:CallDelayByQuest("1", 1, function(arg1)
        actorMgr:GetActor("14038"):SetWeather("Homeworld/Weather_ClearSky_HomeWorld_Interior_02")
    end)

    this:DestroySelf()
end

function Q14038Trigger7:PreTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger7] PreTriggerIn")
end

function Q14038Trigger7:LightUpTriggerIn()
    print("[MainId: 14038][Trigger: Q14038Trigger7] LightUpTriggerIn")
end

function Q14038Trigger7:TriggerOut()
    print("[MainId: 14038][Trigger: Q14038Trigger7] TriggerOut")
end

return Q14038Trigger7
