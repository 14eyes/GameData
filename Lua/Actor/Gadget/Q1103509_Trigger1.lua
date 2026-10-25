require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1103509_Trigger1 = class("Q1103509_Trigger1", GadgetActorProxy)
Q1103509_Trigger1.defaultAlias = "Q1103509_Trigger1"
local Q11035ClientConfig = require("Quest/Client/Q11035ClientConfig")

local this
local subIDs = Q11035ClientConfig.SubIDs
local datas = Q11035ClientConfig.Datas
local npcs = Q11035ClientConfig.Npcs
local points = Q11035ClientConfig.Points

function Q1103509_Trigger1:OnPostDataPrepare()
    print("Q1103509_Trigger1 - OnPostDataPrepare")
    this = self
end

function Q1103509_Trigger1:OnPostComponentPrepare()
    print("Q1103509_Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q1103509_Trigger1:TriggerIn()
    print("Q1103509_Trigger1 - TriggerIn")
end

function Q1103509_Trigger1:PreTriggerIn()
    print("Q1103509_Trigger1 - PreTriggerIn")
end

function Q1103509_Trigger1:LightUpTriggerIn()
    print("Q1103509_Trigger1 - LightUpTriggerIn")
end

function Q1103509_Trigger1:TriggerOut()
    print("Q1103509_Trigger1 - TriggerOut")
    local actor = actorMgr:GetActor("11035")
    actor:RemoveLocalGadget(71700737, "1")
    actor:RemoveLocalGadget(71700736, "2")
    actor:RemoveLocalGadget(71700737, "3")
    actor:RemoveLocalGadget(71700738, "4")
    actor:RemoveLocalGadget(71700739, "5")
    actor:RemoveLocalGadget(71700493, "6")
    actor:RemoveLocalGadget(71700493, "7")
    actor:RemoveLocalGadget(71700379, "1")
    actor:SafeDestroyQuestNpc(npcs.Npc13917.alias, 3)
    self:DestroySelf()
end

return Q1103509_Trigger1
