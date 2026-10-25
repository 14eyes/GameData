require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71018 = class("Quest71018", QuestActorProxy)
Quest71018.defaultAlias = "Quest71018"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71018:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71018:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7101801"] = self.OnSubStart7101801,
        ["7101802"] = self.OnSubStart7101802,
        ["7101803"] = self.OnSubStart7101803,
        ["7101822"] = self.OnSubStart7101822,
        ["7101823"] = self.OnSubStart7101823,
        ["7101824"] = self.OnSubStart7101824,
        ["7101804"] = self.OnSubStart7101804,
        ["7101805"] = self.OnSubStart7101805,
        ["7101806"] = self.OnSubStart7101806,
        ["7101807"] = self.OnSubStart7101807,
        ["7101808"] = self.OnSubStart7101808,
        ["7101809"] = self.OnSubStart7101809,
        ["7101810"] = self.OnSubStart7101810,
        ["7101811"] = self.OnSubStart7101811,
        ["7101812"] = self.OnSubStart7101812,
        ["7101813"] = self.OnSubStart7101813,
        ["7101814"] = self.OnSubStart7101814,
        ["7101815"] = self.OnSubStart7101815,
        ["7101816"] = self.OnSubStart7101816,
        ["7101817"] = self.OnSubStart7101817,
        ["7101818"] = self.OnSubStart7101818,
        ["7101819"] = self.OnSubStart7101819,
        ["7101820"] = self.OnSubStart7101820,
        ["7101821"] = self.OnSubStart7101821
    }
end

function Quest71018:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7101801"] = self.OnSubFinish7101801,
        ["7101802"] = self.OnSubFinish7101802,
        ["7101803"] = self.OnSubFinish7101803,
        ["7101822"] = self.OnSubFinish7101822,
        ["7101823"] = self.OnSubFinish7101823,
        ["7101824"] = self.OnSubFinish7101824,
        ["7101804"] = self.OnSubFinish7101804,
        ["7101805"] = self.OnSubFinish7101805,
        ["7101806"] = self.OnSubFinish7101806,
        ["7101807"] = self.OnSubFinish7101807,
        ["7101808"] = self.OnSubFinish7101808,
        ["7101809"] = self.OnSubFinish7101809,
        ["7101810"] = self.OnSubFinish7101810,
        ["7101811"] = self.OnSubFinish7101811,
        ["7101812"] = self.OnSubFinish7101812,
        ["7101813"] = self.OnSubFinish7101813,
        ["7101814"] = self.OnSubFinish7101814,
        ["7101815"] = self.OnSubFinish7101815,
        ["7101816"] = self.OnSubFinish7101816,
        ["7101817"] = self.OnSubFinish7101817,
        ["7101818"] = self.OnSubFinish7101818,
        ["7101819"] = self.OnSubFinish7101819,
        ["7101820"] = self.OnSubFinish7101820,
        ["7101821"] = self.OnSubFinish7101821
    }
end

function Quest71018:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7101801"] = self.OnSubFailed7101801,
        ["7101802"] = self.OnSubFailed7101802,
        ["7101803"] = self.OnSubFailed7101803,
        ["7101822"] = self.OnSubFailed7101822,
        ["7101823"] = self.OnSubFailed7101823,
        ["7101824"] = self.OnSubFailed7101824,
        ["7101804"] = self.OnSubFailed7101804,
        ["7101805"] = self.OnSubFailed7101805,
        ["7101806"] = self.OnSubFailed7101806,
        ["7101807"] = self.OnSubFailed7101807,
        ["7101808"] = self.OnSubFailed7101808,
        ["7101809"] = self.OnSubFailed7101809,
        ["7101810"] = self.OnSubFailed7101810,
        ["7101811"] = self.OnSubFailed7101811,
        ["7101812"] = self.OnSubFailed7101812,
        ["7101813"] = self.OnSubFailed7101813,
        ["7101814"] = self.OnSubFailed7101814,
        ["7101815"] = self.OnSubFailed7101815,
        ["7101816"] = self.OnSubFailed7101816,
        ["7101817"] = self.OnSubFailed7101817,
        ["7101818"] = self.OnSubFailed7101818,
        ["7101819"] = self.OnSubFailed7101819,
        ["7101820"] = self.OnSubFailed7101820,
        ["7101821"] = self.OnSubFailed7101821
    }
end

function Quest71018:Start()
    print("Start")
end

function Quest71018:OnDestroy()
    print("OnDestroy")
end

function Quest71018:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71018:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71018:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestoryAll()
end

function Quest71018:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71018:BanDaily()
    print("BanDaily")
    self:NotifyTo(npcs.Npc2434Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2435Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2436Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2437Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2438Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2440Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2441Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2433Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2439Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2013Data.alias, 2, true)
    self:NotifyTo(npcs.Npc2025Data.alias, 2, true)
end

function Quest71018:Transport()
    print("Transport")
    print("Transport")
    self:TransmitPlayerByQuestId(7101801, 1, nil, self.BlackScreenEnter, nil)
end

function Quest71018:StartDaily()
    print("StartDaily")
    print("StartDaily")
    self:NotifyTo(npcs.Npc2434Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2435Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2436Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2437Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2438Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2440Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2441Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2025Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2013Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2433Data.alias, 0, true)
    self:NotifyTo(npcs.Npc2439Data.alias, 0, true)
end

function Quest71018:DisableInput()
    print("DisableInput")
    self:EnablePlayerInput(false)
end

function Quest71018:EnableInput()
    print("EnableInput")
    self:EnablePlayerInput(true)
end

function Quest71018:NewFunction()
    print("NewFunction")
    self:RequestInteraction(npcs.Npc2433Data.alias)
end

function Quest71018:BlackScreenEnter()
    print("BlackScreenEnter")
    self:ShowBlackScreen(0, 3, 0.5, nil, nil, nil, "QUEST_Message_Q71018")
end

function Quest71018:DestoryNPC()
    print("DestoryNPC")
    self:DestroyQuestNpcActor(npcs.Npc2433Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2439Data.alias, 3)
end

function Quest71018:DestoryAll()
    print("DestoryAll")
    self:DestroyQuestNpcActor(npcs.Npc2433Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2434Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2435Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2436Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2437Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2439Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2440Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2441Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2025Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2013Data.alias, 3)
end

function Quest71018:OnSubStart7101801(arg1)
    print("OnSubStart7101801")
    self:CreateQuestNpc(arg1, npcs.Npc2433Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc2439Data.id, 7)
    actorMgr:CreateActorWithPos("Q71018Trigger", "Actor/Gadget/Q71018Trigger", 70900002, 0, {x = -397.1141, y = 207.5768, z = -1138.487}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest71018:OnSubFinish7101801(arg1)
    print("OnSubFinish7101801")
    self:ShowBlackScreen(0.2, 1, 0.5, self.DestoryNPC, nil, nil, "")
    self:ActorDestroy("Q71018Trigger")
end

function Quest71018:OnSubFailed7101801(arg1)
    print("OnSubFailed7101801")
end

function Quest71018:OnSubStart7101802(arg1)
    print("OnSubStart7101802")
    self:CallDelay(2, self.BanDaily)
end

function Quest71018:OnSubFinish7101802(arg1)
    print("OnSubFinish7101802")
end

function Quest71018:OnSubFailed7101802(arg1)
    print("OnSubFailed7101802")
end

function Quest71018:OnSubStart7101803(arg1)
    print("OnSubStart7101803")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101803(arg1)
    print("OnSubFinish7101803")
end

function Quest71018:OnSubFailed7101803(arg1)
    print("OnSubFailed7101803")
end

function Quest71018:OnSubStart7101822(arg1)
    print("OnSubStart7101822")
end

function Quest71018:OnSubFinish7101822(arg1)
    print("OnSubFinish7101822")
end

function Quest71018:OnSubFailed7101822(arg1)
    print("OnSubFailed7101822")
end

function Quest71018:OnSubStart7101823(arg1)
    print("OnSubStart7101823")
end

function Quest71018:OnSubFinish7101823(arg1)
    print("OnSubFinish7101823")
end

function Quest71018:OnSubFailed7101823(arg1)
    print("OnSubFailed7101823")
end

function Quest71018:OnSubStart7101824(arg1)
    print("OnSubStart7101824")
end

function Quest71018:OnSubFinish7101824(arg1)
    print("OnSubFinish7101824")
end

function Quest71018:OnSubFailed7101824(arg1)
    print("OnSubFailed7101824")
end

function Quest71018:OnSubStart7101804(arg1)
    print("OnSubStart7101804")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101804(arg1)
    print("OnSubFinish7101804")
end

function Quest71018:OnSubFailed7101804(arg1)
    print("OnSubFailed7101804")
end

function Quest71018:OnSubStart7101805(arg1)
    print("OnSubStart7101805")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101805(arg1)
    print("OnSubFinish7101805")
end

function Quest71018:OnSubFailed7101805(arg1)
    print("OnSubFailed7101805")
end

function Quest71018:OnSubStart7101806(arg1)
    print("OnSubStart7101806")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101806(arg1)
    print("OnSubFinish7101806")
    self:ShowBlackScreen(0.2, 1, 0.5, self.DisableInput, self.EnableInput, nil, "QUEST_Message_Q71018_2")
end

function Quest71018:OnSubFailed7101806(arg1)
    print("OnSubFailed7101806")
end

function Quest71018:OnSubStart7101807(arg1)
    print("OnSubStart7101807")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101807(arg1)
    print("OnSubFinish7101807")
end

function Quest71018:OnSubFailed7101807(arg1)
    print("OnSubFailed7101807")
end

function Quest71018:OnSubStart7101808(arg1)
    print("OnSubStart7101808")
    print("OnSubStart7101808")
    self:RequestInteractionForceAlias(npcs.Npc2435Data.alias)
end

function Quest71018:OnSubFinish7101808(arg1)
    print("OnSubFinish7101808")
end

function Quest71018:OnSubFailed7101808(arg1)
    print("OnSubFailed7101808")
end

function Quest71018:OnSubStart7101809(arg1)
    print("OnSubStart7101809")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101809(arg1)
    print("OnSubFinish7101809")
end

function Quest71018:OnSubFailed7101809(arg1)
    print("OnSubFailed7101809")
end

function Quest71018:OnSubStart7101810(arg1)
    print("OnSubStart7101810")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101810(arg1)
    print("OnSubFinish7101810")
end

function Quest71018:OnSubFailed7101810(arg1)
    print("OnSubFailed7101810")
end

function Quest71018:OnSubStart7101811(arg1)
    print("OnSubStart7101811")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101811(arg1)
    print("OnSubFinish7101811")
end

function Quest71018:OnSubFailed7101811(arg1)
    print("OnSubFailed7101811")
end

function Quest71018:OnSubStart7101812(arg1)
    print("OnSubStart7101812")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101812(arg1)
    print("OnSubFinish7101812")
end

function Quest71018:OnSubFailed7101812(arg1)
    print("OnSubFailed7101812")
end

function Quest71018:OnSubStart7101813(arg1)
    print("OnSubStart7101813")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101813(arg1)
    print("OnSubFinish7101813")
end

function Quest71018:OnSubFailed7101813(arg1)
    print("OnSubFailed7101813")
end

function Quest71018:OnSubStart7101814(arg1)
    print("OnSubStart7101814")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101814(arg1)
    print("OnSubFinish7101814")
end

function Quest71018:OnSubFailed7101814(arg1)
    print("OnSubFailed7101814")
end

function Quest71018:OnSubStart7101815(arg1)
    print("OnSubStart7101815")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101815(arg1)
    print("OnSubFinish7101815")
end

function Quest71018:OnSubFailed7101815(arg1)
    print("OnSubFailed7101815")
end

function Quest71018:OnSubStart7101816(arg1)
    print("OnSubStart7101816")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101816(arg1)
    print("OnSubFinish7101816")
end

function Quest71018:OnSubFailed7101816(arg1)
    print("OnSubFailed7101816")
end

function Quest71018:OnSubStart7101817(arg1)
    print("OnSubStart7101817")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101817(arg1)
    print("OnSubFinish7101817")
end

function Quest71018:OnSubFailed7101817(arg1)
    print("OnSubFailed7101817")
end

function Quest71018:OnSubStart7101818(arg1)
    print("OnSubStart7101818")
    self:BanDaily()
end

function Quest71018:OnSubFinish7101818(arg1)
    print("OnSubFinish7101818")
    self:ShowBlackScreen(0.5, 1, 0.5, self.StartDaily, nil, nil, "")
end

function Quest71018:OnSubFailed7101818(arg1)
    print("OnSubFailed7101818")
end

function Quest71018:OnSubStart7101819(arg1)
    print("OnSubStart7101819")
end

function Quest71018:OnSubFinish7101819(arg1)
    print("OnSubFinish7101819")
end

function Quest71018:OnSubFailed7101819(arg1)
    print("OnSubFailed7101819")
end

function Quest71018:OnSubStart7101820(arg1)
    print("OnSubStart7101820")
end

function Quest71018:OnSubFinish7101820(arg1)
    print("OnSubFinish7101820")
end

function Quest71018:OnSubFailed7101820(arg1)
    print("OnSubFailed7101820")
end

function Quest71018:OnSubStart7101821(arg1)
    print("OnSubStart7101821")
end

function Quest71018:OnSubFinish7101821(arg1)
    print("OnSubFinish7101821")
end

function Quest71018:OnSubFailed7101821(arg1)
    print("OnSubFailed7101821")
end

return Quest71018
