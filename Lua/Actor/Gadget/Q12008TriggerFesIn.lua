require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12008TriggerFesIn = class("Q12008TriggerFesIn", GadgetActorProxy)
Q12008TriggerFesIn.defaultAlias = "Q12008TriggerFesIn"
local Q12008ClientConfig = require("Quest/Client/Q12008ClientConfig")

local this
local subIDs = Q12008ClientConfig.SubIDs
local npcs = Q12008ClientConfig.Npcs
local datas = Q12008ClientConfig.Datas

function Q12008TriggerFesIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q12008TriggerFesIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.8, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q12008TriggerFesIn:TriggerIn()
    print("TriggerIn")
    print("TriggerIn")
    local actor = actorMgr:GetActor(Q12008ClientConfig.ActorAlias)
    if actor:GetSubQuestState(1200801) == 2 then
        actor:FinishQuestID(false, 1200801)
    end

    self:DestroySelf()
end

function Q12008TriggerFesIn:TriggerOut()
    print("TriggerOut")
end

return Q12008TriggerFesIn
