require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7007DreamKaiche02 = class("Q7007DreamKaiche02", GadgetActorProxy)
Q7007DreamKaiche02.defaultAlias = "Q7007DreamKaiche02"
local Q7007ClientConfig = require("Quest/Client/Q7007ClientConfig")

local this
local subIDs = Q7007ClientConfig.SubIDs
local datas = Q7007ClientConfig.Datas
local npcs = Q7007ClientConfig.Npcs
local points = Q7007ClientConfig.Points

function Q7007DreamKaiche02:OnPostDataPrepare()
    print("Q7007DreamKaiche02 - OnPostDataPrepare")
    this = self
end

function Q7007DreamKaiche02:OnPostComponentPrepare()
    print("Q7007DreamKaiche02 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7007)
end

function Q7007DreamKaiche02:TriggerIn()
    print("Q7007DreamKaiche02 - TriggerIn")
    actorMgr:GetActor("7007"):QuestNarratorTask(datas.Q7007DreamKaiche02, nil)
    this:DestroySelf()
end

function Q7007DreamKaiche02:PreTriggerIn()
    print("Q7007DreamKaiche02 - PreTriggerIn")
end

function Q7007DreamKaiche02:LightUpTriggerIn()
    print("Q7007DreamKaiche02 - LightUpTriggerIn")
end

function Q7007DreamKaiche02:TriggerOut()
    print("Q7007DreamKaiche02 - TriggerOut")
end

return Q7007DreamKaiche02
