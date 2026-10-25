require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72199 = class("Quest72199", QuestActorProxy)
Quest72199.defaultAlias = "Quest72199"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72199:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72199:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7219901"] = self.OnSubStart7219901,
        ["7219905"] = self.OnSubStart7219905,
        ["7219902"] = self.OnSubStart7219902,
        ["7219903"] = self.OnSubStart7219903,
        ["7219904"] = self.OnSubStart7219904,
        ["7219906"] = self.OnSubStart7219906,
        ["7219907"] = self.OnSubStart7219907,
        ["7219909"] = self.OnSubStart7219909,
        ["7219910"] = self.OnSubStart7219910,
        ["7219923"] = self.OnSubStart7219923,
        ["7219911"] = self.OnSubStart7219911,
        ["7219912"] = self.OnSubStart7219912,
        ["7219913"] = self.OnSubStart7219913,
        ["7219914"] = self.OnSubStart7219914,
        ["7219915"] = self.OnSubStart7219915,
        ["7219916"] = self.OnSubStart7219916,
        ["7219917"] = self.OnSubStart7219917,
        ["7219918"] = self.OnSubStart7219918,
        ["7219919"] = self.OnSubStart7219919,
        ["7219920"] = self.OnSubStart7219920,
        ["7219921"] = self.OnSubStart7219921,
        ["7219922"] = self.OnSubStart7219922
    }
end

function Quest72199:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7219901"] = self.OnSubFinish7219901,
        ["7219905"] = self.OnSubFinish7219905,
        ["7219902"] = self.OnSubFinish7219902,
        ["7219903"] = self.OnSubFinish7219903,
        ["7219904"] = self.OnSubFinish7219904,
        ["7219906"] = self.OnSubFinish7219906,
        ["7219907"] = self.OnSubFinish7219907,
        ["7219909"] = self.OnSubFinish7219909,
        ["7219910"] = self.OnSubFinish7219910,
        ["7219923"] = self.OnSubFinish7219923,
        ["7219911"] = self.OnSubFinish7219911,
        ["7219912"] = self.OnSubFinish7219912,
        ["7219913"] = self.OnSubFinish7219913,
        ["7219914"] = self.OnSubFinish7219914,
        ["7219915"] = self.OnSubFinish7219915,
        ["7219916"] = self.OnSubFinish7219916,
        ["7219917"] = self.OnSubFinish7219917,
        ["7219918"] = self.OnSubFinish7219918,
        ["7219919"] = self.OnSubFinish7219919,
        ["7219920"] = self.OnSubFinish7219920,
        ["7219921"] = self.OnSubFinish7219921,
        ["7219922"] = self.OnSubFinish7219922
    }
end

function Quest72199:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7219901"] = self.OnSubFailed7219901,
        ["7219905"] = self.OnSubFailed7219905,
        ["7219902"] = self.OnSubFailed7219902,
        ["7219903"] = self.OnSubFailed7219903,
        ["7219904"] = self.OnSubFailed7219904,
        ["7219906"] = self.OnSubFailed7219906,
        ["7219907"] = self.OnSubFailed7219907,
        ["7219909"] = self.OnSubFailed7219909,
        ["7219910"] = self.OnSubFailed7219910,
        ["7219923"] = self.OnSubFailed7219923,
        ["7219911"] = self.OnSubFailed7219911,
        ["7219912"] = self.OnSubFailed7219912,
        ["7219913"] = self.OnSubFailed7219913,
        ["7219914"] = self.OnSubFailed7219914,
        ["7219915"] = self.OnSubFailed7219915,
        ["7219916"] = self.OnSubFailed7219916,
        ["7219917"] = self.OnSubFailed7219917,
        ["7219918"] = self.OnSubFailed7219918,
        ["7219919"] = self.OnSubFailed7219919,
        ["7219920"] = self.OnSubFailed7219920,
        ["7219921"] = self.OnSubFailed7219921,
        ["7219922"] = self.OnSubFailed7219922
    }
end

function Quest72199:Start()
    print("Start")
end

function Quest72199:OnDestroy()
    print("OnDestroy")
end

function Quest72199:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72199:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72199:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72199:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("Invoke success, variable not yet")
    if arg1 == 1 then
        local n = self:GetQuestVar(7219905, 0) + 1
        self:SetQuestVarByMainId(0, n)
        print("variable change success end invoke")
    end
end

function Quest72199:OnSubStart7219901(arg1)
    print("OnSubStart7219901")
    self:CreateQuestNpc(arg1, npcs.Npc3167DataStartA.id, 1)
end

function Quest72199:OnSubFinish7219901(arg1)
    print("OnSubFinish7219901")
    print("OnSubFinish7219901")
    self.ActionSafeCall(self, function()
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        self:SafeDestroyQuestNpc(npcs.Npc3167DataStartA.alias, 3)
        self:CreateQuestNpc(arg1, npcs.Npc3167DataBackWait.id, 2)
    end)
end

function Quest72199:OnSubFailed7219901(arg1)
    print("OnSubFailed7219901")
end

function Quest72199:OnSubStart7219905(arg1)
    print("OnSubStart7219905")
    self:CreateQuestNpc(arg1, npcs.Npc3167DataStartA.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20330DataLock1In.id, 4)
end

function Quest72199:OnSubFinish7219905(arg1)
    print("OnSubFinish7219905")
end

function Quest72199:OnSubFailed7219905(arg1)
    print("OnSubFailed7219905")
end

function Quest72199:OnSubStart7219902(arg1)
    print("OnSubStart7219902")
    print("OnSubStart7219902")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc3167DataBackWait.id, 2)
        self:CreateQuestNpc(arg1, npcs.Npc3158Data.id, 12)
    end)
end

function Quest72199:OnSubFinish7219902(arg1)
    print("OnSubFinish7219902")
end

function Quest72199:OnSubFailed7219902(arg1)
    print("OnSubFailed7219902")
end

function Quest72199:OnSubStart7219903(arg1)
    print("OnSubStart7219903")
end

function Quest72199:OnSubFinish7219903(arg1)
    print("OnSubFinish7219903")
    print("OnSubFinish7219903")
    self.ActionSafeCall(self, function()
        self:SafeDestroyQuestNpc(npcs.Npc3167DataBackWait.alias, 3)
        self:SafeDestroyQuestNpc(npcs.Npc3154Data.alias, 3)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72199:OnSubFailed7219903(arg1)
    print("OnSubFailed7219903")
end

function Quest72199:OnSubStart7219904(arg1)
    print("OnSubStart7219904")
end

function Quest72199:OnSubFinish7219904(arg1)
    print("OnSubFinish7219904")
    self:SafeDestroyQuestNpc(npcs.Npc3158Data.alias, 3)
end

function Quest72199:OnSubFailed7219904(arg1)
    print("OnSubFailed7219904")
end

function Quest72199:OnSubStart7219906(arg1)
    print("OnSubStart7219906")
    self:CreateQuestNpcWithTriggerBlack("7219906Trigger", 7219906, 20330, 11, 15, 2)
end

function Quest72199:OnSubFinish7219906(arg1)
    print("OnSubFinish7219906")
    print("OnSubFinish7219906")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {npcs.Npc3155DataIslandAdd.alias})
    self.ActionSafeCall(self, function()
        self:TransmitPlayerWithTextByQuestId(7219906, 1, {""}, 3, nil, function()
            self:LevelLoadFinishSafeCall(function()
                self:CreateQuestNpc(arg1, npcs.Npc3155DataIslandAdd.id, 12)
                self:SafeDestroyQuestNpc(npcs.Npc20330DataLock1In.alias, 3)
                self:RequestInteraction("Npc3155")
            end)
        end, questNpcCreateTask)
    end)
end

function Quest72199:OnSubFailed7219906(arg1)
    print("OnSubFailed7219906")
end

function Quest72199:OnSubStart7219907(arg1)
    print("OnSubStart7219907")
    print("OnSubStart7219907")
    self.LevelLoadFinishSafeCall(self, function()
        self:RequestInteraction("Npc3155")
    end)
end

function Quest72199:OnSubFinish7219907(arg1)
    print("OnSubFinish7219907")
    print("OnSubFinish7219907")
    self.ActionSafeCall(self, function()
        self:SafeDestroyQuestNpc(npcs.Npc20330DataLock1In.alias, 3)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
        self:SafeDestroyQuestNpc(npcs.Npc3155DataLocked2ndOut.alias, 3)
    end)
end

function Quest72199:OnSubFailed7219907(arg1)
    print("OnSubFailed7219907")
end

function Quest72199:OnSubStart7219909(arg1)
    print("OnSubStart7219909")
    print("OnSubStart7219909")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc3155DataIslandWait.id, 5)
    end)
end

function Quest72199:OnSubFinish7219909(arg1)
    print("OnSubFinish7219909")
end

function Quest72199:OnSubFailed7219909(arg1)
    print("OnSubFailed7219909")
end

function Quest72199:OnSubStart7219910(arg1)
    print("OnSubStart7219910")
end

function Quest72199:OnSubFinish7219910(arg1)
    print("OnSubFinish7219910")
end

function Quest72199:OnSubFailed7219910(arg1)
    print("OnSubFailed7219910")
end

function Quest72199:OnSubStart7219923(arg1)
    print("OnSubStart7219923")
end

function Quest72199:OnSubFinish7219923(arg1)
    print("OnSubFinish7219923")
end

function Quest72199:OnSubFailed7219923(arg1)
    print("OnSubFailed7219923")
end

function Quest72199:OnSubStart7219911(arg1)
    print("OnSubStart7219911")
end

function Quest72199:OnSubFinish7219911(arg1)
    print("OnSubFinish7219911")
    print("OnSubFinish7219911")
    self.ActionSafeCall(self, function()
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72199:OnSubFailed7219911(arg1)
    print("OnSubFailed7219911")
end

function Quest72199:OnSubStart7219912(arg1)
    print("OnSubStart7219912")
end

function Quest72199:OnSubFinish7219912(arg1)
    print("OnSubFinish7219912")
    self:SafeDestroyQuestNpc(npcs.Npc3155DataIslandWait.alias, 3)
end

function Quest72199:OnSubFailed7219912(arg1)
    print("OnSubFailed7219912")
end

function Quest72199:OnSubStart7219913(arg1)
    print("OnSubStart7219913")
    actorMgr:CreateActorWithPos(datas.Q72199Trigger_.alias, datas.Q72199Trigger_.script, datas.Q72199Trigger_.id, 0, datas.Q72199Trigger_.point.pos, datas.Q72199Trigger_.point.rot, true, false, 3)
end

function Quest72199:OnSubFinish7219913(arg1)
    print("OnSubFinish7219913")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest72199:OnSubFailed7219913(arg1)
    print("OnSubFailed7219913")
end

function Quest72199:OnSubStart7219914(arg1)
    print("OnSubStart7219914")
    self:CreateQuestNpc(arg1, npcs.Npc20331Data.id, 8)
    self:CreateQuestNpc(arg1, npcs.Npc3155DataLocked2nd.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc20332Data.id, 7)
end

function Quest72199:OnSubFinish7219914(arg1)
    print("OnSubFinish7219914")
end

function Quest72199:OnSubFailed7219914(arg1)
    print("OnSubFailed7219914")
end

function Quest72199:OnSubStart7219915(arg1)
    print("OnSubStart7219915")
end

function Quest72199:OnSubFinish7219915(arg1)
    print("OnSubFinish7219915")
    print("OnSubFinish7219915")
    self.ActionSafeCall(self, function()
        self:SafeDestroyQuestNpc(npcs.Npc20332Data.alias, 3)
        self:SafeDestroyQuestNpc(npcs.Npc20331Data.alias, 3)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72199:OnSubFailed7219915(arg1)
    print("OnSubFailed7219915")
end

function Quest72199:OnSubStart7219916(arg1)
    print("OnSubStart7219916")
end

function Quest72199:OnSubFinish7219916(arg1)
    print("OnSubFinish7219916")
end

function Quest72199:OnSubFailed7219916(arg1)
    print("OnSubFailed7219916")
end

function Quest72199:OnSubStart7219917(arg1)
    print("OnSubStart7219917")
    print("OnSubStart7219917")
    self.ShowBlackScreen(self, 0.5, 1.5, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc3155DataLocked2ndOut.id, 12)
        self:RequestInteraction("Npc3155")
    end, nil, nil, "", false, true)
end

function Quest72199:OnSubFinish7219917(arg1)
    print("OnSubFinish7219917")
    print("OnSubFinish7219917")
    self.ActionSafeCall(self, function()
        self:SafeDestroyQuestNpc(npcs.Npc3155DataLocked2ndOut.alias, 3)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72199:OnSubFailed7219917(arg1)
    print("OnSubFailed7219917")
end

function Quest72199:OnSubStart7219918(arg1)
    print("OnSubStart7219918")
end

function Quest72199:OnSubFinish7219918(arg1)
    print("OnSubFinish7219918")
end

function Quest72199:OnSubFailed7219918(arg1)
    print("OnSubFailed7219918")
end

function Quest72199:OnSubStart7219919(arg1)
    print("OnSubStart7219919")
end

function Quest72199:OnSubFinish7219919(arg1)
    print("OnSubFinish7219919")
end

function Quest72199:OnSubFailed7219919(arg1)
    print("OnSubFailed7219919")
end

function Quest72199:OnSubStart7219920(arg1)
    print("OnSubStart7219920")
end

function Quest72199:OnSubFinish7219920(arg1)
    print("OnSubFinish7219920")
end

function Quest72199:OnSubFailed7219920(arg1)
    print("OnSubFailed7219920")
end

function Quest72199:OnSubStart7219921(arg1)
    print("OnSubStart7219921")
    print("OnSubStart7219921")
    self.ShowBlackScreen(self, 0.5, 1.5, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc3155DataTreasure.id, 9)
        self:RequestInteraction("Npc3155")
    end, nil, nil, "", false, true)
end

function Quest72199:OnSubFinish7219921(arg1)
    print("OnSubFinish7219921")
    print("OnSubFinish7219921")
    self.ActionSafeCall(self, function()
        self:SafeDestroyQuestNpc(npcs.Npc3155DataTreasure.alias, 3)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72199:OnSubFailed7219921(arg1)
    print("OnSubFailed7219921")
end

function Quest72199:OnSubStart7219922(arg1)
    print("OnSubStart7219922")
    self:CreateQuestNpc(arg1, npcs.Npc3167DataBackWait.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc3154Data.id, 3)
end

function Quest72199:OnSubFinish7219922(arg1)
    print("OnSubFinish7219922")
    print("OnSubFinish7219922")
    self.ActionSafeCall(self, function()
        self:SafeDestroyQuestNpc(npcs.Npc3167DataBackWait.alias, 3)
        self:SafeDestroyQuestNpc(npcs.Npc3154Data.alias, 3)
        self:SafeDestroyQuestNpc(npcs.Npc3155DataHome.alias, 3)
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72199:OnSubFailed7219922(arg1)
    print("OnSubFailed7219922")
end

return Quest72199
