require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71008 = class("Quest71008", QuestActorProxy)
Quest71008.defaultAlias = "Quest71008"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71008:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7100801"] = self.OnSubStart7100801,
        ["7100850"] = self.OnSubStart7100850,
        ["7100851"] = self.OnSubStart7100851,
        ["7100804"] = self.OnSubStart7100804,
        ["7100805"] = self.OnSubStart7100805,
        ["7100806"] = self.OnSubStart7100806,
        ["7100838"] = self.OnSubStart7100838,
        ["7100839"] = self.OnSubStart7100839,
        ["7100840"] = self.OnSubStart7100840,
        ["7100810"] = self.OnSubStart7100810,
        ["7100811"] = self.OnSubStart7100811,
        ["7100812"] = self.OnSubStart7100812,
        ["7100841"] = self.OnSubStart7100841,
        ["7100842"] = self.OnSubStart7100842,
        ["7100843"] = self.OnSubStart7100843,
        ["7100816"] = self.OnSubStart7100816,
        ["7100817"] = self.OnSubStart7100817,
        ["7100818"] = self.OnSubStart7100818,
        ["7100844"] = self.OnSubStart7100844,
        ["7100845"] = self.OnSubStart7100845,
        ["7100846"] = self.OnSubStart7100846,
        ["7100822"] = self.OnSubStart7100822,
        ["7100823"] = self.OnSubStart7100823,
        ["7100824"] = self.OnSubStart7100824,
        ["7100847"] = self.OnSubStart7100847,
        ["7100848"] = self.OnSubStart7100848,
        ["7100849"] = self.OnSubStart7100849,
        ["7100802"] = self.OnSubStart7100802,
        ["7100852"] = self.OnSubStart7100852,
        ["7100803"] = self.OnSubStart7100803,
        ["7100807"] = self.OnSubStart7100807,
        ["7100834"] = self.OnSubStart7100834,
        ["7100808"] = self.OnSubStart7100808,
        ["7100853"] = self.OnSubStart7100853,
        ["7100809"] = self.OnSubStart7100809,
        ["7100813"] = self.OnSubStart7100813,
        ["7100835"] = self.OnSubStart7100835,
        ["7100814"] = self.OnSubStart7100814,
        ["7100854"] = self.OnSubStart7100854,
        ["7100815"] = self.OnSubStart7100815,
        ["7100819"] = self.OnSubStart7100819,
        ["7100836"] = self.OnSubStart7100836,
        ["7100820"] = self.OnSubStart7100820,
        ["7100855"] = self.OnSubStart7100855,
        ["7100821"] = self.OnSubStart7100821,
        ["7100825"] = self.OnSubStart7100825,
        ["7100832"] = self.OnSubStart7100832,
        ["7100826"] = self.OnSubStart7100826,
        ["7100827"] = self.OnSubStart7100827,
        ["7100828"] = self.OnSubStart7100828,
        ["7100829"] = self.OnSubStart7100829,
        ["7100830"] = self.OnSubStart7100830,
        ["7100831"] = self.OnSubStart7100831,
        ["7100833"] = self.OnSubStart7100833,
        ["7100837"] = self.OnSubStart7100837
    }
end

function Quest71008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7100801"] = self.OnSubFinish7100801,
        ["7100850"] = self.OnSubFinish7100850,
        ["7100851"] = self.OnSubFinish7100851,
        ["7100804"] = self.OnSubFinish7100804,
        ["7100805"] = self.OnSubFinish7100805,
        ["7100806"] = self.OnSubFinish7100806,
        ["7100838"] = self.OnSubFinish7100838,
        ["7100839"] = self.OnSubFinish7100839,
        ["7100840"] = self.OnSubFinish7100840,
        ["7100810"] = self.OnSubFinish7100810,
        ["7100811"] = self.OnSubFinish7100811,
        ["7100812"] = self.OnSubFinish7100812,
        ["7100841"] = self.OnSubFinish7100841,
        ["7100842"] = self.OnSubFinish7100842,
        ["7100843"] = self.OnSubFinish7100843,
        ["7100816"] = self.OnSubFinish7100816,
        ["7100817"] = self.OnSubFinish7100817,
        ["7100818"] = self.OnSubFinish7100818,
        ["7100844"] = self.OnSubFinish7100844,
        ["7100845"] = self.OnSubFinish7100845,
        ["7100846"] = self.OnSubFinish7100846,
        ["7100822"] = self.OnSubFinish7100822,
        ["7100823"] = self.OnSubFinish7100823,
        ["7100824"] = self.OnSubFinish7100824,
        ["7100847"] = self.OnSubFinish7100847,
        ["7100848"] = self.OnSubFinish7100848,
        ["7100849"] = self.OnSubFinish7100849,
        ["7100802"] = self.OnSubFinish7100802,
        ["7100852"] = self.OnSubFinish7100852,
        ["7100803"] = self.OnSubFinish7100803,
        ["7100807"] = self.OnSubFinish7100807,
        ["7100834"] = self.OnSubFinish7100834,
        ["7100808"] = self.OnSubFinish7100808,
        ["7100853"] = self.OnSubFinish7100853,
        ["7100809"] = self.OnSubFinish7100809,
        ["7100813"] = self.OnSubFinish7100813,
        ["7100835"] = self.OnSubFinish7100835,
        ["7100814"] = self.OnSubFinish7100814,
        ["7100854"] = self.OnSubFinish7100854,
        ["7100815"] = self.OnSubFinish7100815,
        ["7100819"] = self.OnSubFinish7100819,
        ["7100836"] = self.OnSubFinish7100836,
        ["7100820"] = self.OnSubFinish7100820,
        ["7100855"] = self.OnSubFinish7100855,
        ["7100821"] = self.OnSubFinish7100821,
        ["7100825"] = self.OnSubFinish7100825,
        ["7100832"] = self.OnSubFinish7100832,
        ["7100826"] = self.OnSubFinish7100826,
        ["7100827"] = self.OnSubFinish7100827,
        ["7100828"] = self.OnSubFinish7100828,
        ["7100829"] = self.OnSubFinish7100829,
        ["7100830"] = self.OnSubFinish7100830,
        ["7100831"] = self.OnSubFinish7100831,
        ["7100833"] = self.OnSubFinish7100833,
        ["7100837"] = self.OnSubFinish7100837
    }
end

function Quest71008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7100802"] = self.OnSubFailed7100802,
        ["7100808"] = self.OnSubFailed7100808,
        ["7100814"] = self.OnSubFailed7100814,
        ["7100820"] = self.OnSubFailed7100820
    }
end

function Quest71008:Start()
    print("Start")
end

function Quest71008:OnDestroy()
    print("OnDestroy")
    self:CountDownClear()
end

function Quest71008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71008:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 or arg1 == 2 or arg1 == 3 or arg1 == 4 or arg1 == 5 then
        self:CountDownUITerminate()
        self:CountNumUITerminate()
        self:UnCallFunc(self.CountDown)
        local actor = actorMgr:GetActor(actorAlias)
        if actor ~= nil then
            print("deliver success")
            actor:FinishQuestID(false, 7100802)
            actor:FinishQuestID(false, 7100808)
            actor:FinishQuestID(false, 7100814)
            actor:FinishQuestID(false, 7100820)
            actor:FinishQuestID(false, 7100826)
        end
    end
end

function Quest71008:BlackScreen()
    print("BlackScreen")
    self:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5)
    self:EnablePlayerInput(true)
end

function Quest71008:CountDownClear()
    print("CountDownClear")
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest71008:CountDown()
    print("CountDown")
    local actor = actorMgr:GetActor(actorAlias)
    if actor ~= nil then
        print("deliver fail")
        actor:FinishQuestID(true, 7100802)
        actor:FinishQuestID(true, 7100808)
        actor:FinishQuestID(true, 7100814)
        actor:FinishQuestID(true, 7100820)
        actor:FinishQuestID(true, 7100826)
    end
end

function Quest71008:Request01()
    print("Request01")
    self:RequestInteraction("Npc20129_01")
end

function Quest71008:Request02()
    print("Request02")
    self:RequestInteraction("Npc20129_02")
end

function Quest71008:Request03()
    print("Request03")
    self:RequestInteraction("Npc20129_03")
end

function Quest71008:RequestBegin()
    print("RequestBegin")
    self:RequestInteraction("Npc20129_Begin")
end

function Quest71008:OnSubStart7100801(arg1)
    print("OnSubStart7100801")
end

function Quest71008:OnSubFinish7100801(arg1)
    print("OnSubFinish7100801")
end

function Quest71008:OnSubStart7100850(arg1)
    print("OnSubStart7100850")
end

function Quest71008:OnSubFinish7100850(arg1)
    print("OnSubFinish7100850")
end

function Quest71008:OnSubStart7100851(arg1)
    print("OnSubStart7100851")
end

function Quest71008:OnSubFinish7100851(arg1)
    print("OnSubFinish7100851")
end

function Quest71008:OnSubStart7100804(arg1)
    print("OnSubStart7100804")
end

function Quest71008:OnSubFinish7100804(arg1)
    print("OnSubFinish7100804")
end

function Quest71008:OnSubStart7100805(arg1)
    print("OnSubStart7100805")
end

function Quest71008:OnSubFinish7100805(arg1)
    print("OnSubFinish7100805")
end

function Quest71008:OnSubStart7100806(arg1)
    print("OnSubStart7100806")
end

function Quest71008:OnSubFinish7100806(arg1)
    print("OnSubFinish7100806")
    self:TransmitPlayerById(arg1, 21)
end

function Quest71008:OnSubStart7100838(arg1)
    print("OnSubStart7100838")
end

function Quest71008:OnSubFinish7100838(arg1)
    print("OnSubFinish7100838")
end

function Quest71008:OnSubStart7100839(arg1)
    print("OnSubStart7100839")
end

function Quest71008:OnSubFinish7100839(arg1)
    print("OnSubFinish7100839")
end

function Quest71008:OnSubStart7100840(arg1)
    print("OnSubStart7100840")
end

function Quest71008:OnSubFinish7100840(arg1)
    print("OnSubFinish7100840")
    self:TransmitPlayerById(arg1, 22)
end

function Quest71008:OnSubStart7100810(arg1)
    print("OnSubStart7100810")
end

function Quest71008:OnSubFinish7100810(arg1)
    print("OnSubFinish7100810")
end

function Quest71008:OnSubStart7100811(arg1)
    print("OnSubStart7100811")
end

function Quest71008:OnSubFinish7100811(arg1)
    print("OnSubFinish7100811")
end

function Quest71008:OnSubStart7100812(arg1)
    print("OnSubStart7100812")
end

function Quest71008:OnSubFinish7100812(arg1)
    print("OnSubFinish7100812")
    self:TransmitPlayerById(arg1, 23)
end

function Quest71008:OnSubStart7100841(arg1)
    print("OnSubStart7100841")
end

function Quest71008:OnSubFinish7100841(arg1)
    print("OnSubFinish7100841")
end

function Quest71008:OnSubStart7100842(arg1)
    print("OnSubStart7100842")
end

function Quest71008:OnSubFinish7100842(arg1)
    print("OnSubFinish7100842")
end

function Quest71008:OnSubStart7100843(arg1)
    print("OnSubStart7100843")
end

function Quest71008:OnSubFinish7100843(arg1)
    print("OnSubFinish7100843")
    self:TransmitPlayerById(arg1, 24)
end

function Quest71008:OnSubStart7100816(arg1)
    print("OnSubStart7100816")
end

function Quest71008:OnSubFinish7100816(arg1)
    print("OnSubFinish7100816")
end

function Quest71008:OnSubStart7100817(arg1)
    print("OnSubStart7100817")
end

function Quest71008:OnSubFinish7100817(arg1)
    print("OnSubFinish7100817")
end

function Quest71008:OnSubStart7100818(arg1)
    print("OnSubStart7100818")
end

function Quest71008:OnSubFinish7100818(arg1)
    print("OnSubFinish7100818")
    self:TransmitPlayerById(arg1, 25)
end

function Quest71008:OnSubStart7100844(arg1)
    print("OnSubStart7100844")
end

function Quest71008:OnSubFinish7100844(arg1)
    print("OnSubFinish7100844")
end

function Quest71008:OnSubStart7100845(arg1)
    print("OnSubStart7100845")
end

function Quest71008:OnSubFinish7100845(arg1)
    print("OnSubFinish7100845")
end

function Quest71008:OnSubStart7100846(arg1)
    print("OnSubStart7100846")
end

function Quest71008:OnSubFinish7100846(arg1)
    print("OnSubFinish7100846")
    self:TransmitPlayerById(arg1, 26)
end

function Quest71008:OnSubStart7100822(arg1)
    print("OnSubStart7100822")
end

function Quest71008:OnSubFinish7100822(arg1)
    print("OnSubFinish7100822")
end

function Quest71008:OnSubStart7100823(arg1)
    print("OnSubStart7100823")
end

function Quest71008:OnSubFinish7100823(arg1)
    print("OnSubFinish7100823")
end

function Quest71008:OnSubStart7100824(arg1)
    print("OnSubStart7100824")
end

function Quest71008:OnSubFinish7100824(arg1)
    print("OnSubFinish7100824")
    self:TransmitPlayerById(arg1, 27)
end

function Quest71008:OnSubStart7100847(arg1)
    print("OnSubStart7100847")
end

function Quest71008:OnSubFinish7100847(arg1)
    print("OnSubFinish7100847")
end

function Quest71008:OnSubStart7100848(arg1)
    print("OnSubStart7100848")
end

function Quest71008:OnSubFinish7100848(arg1)
    print("OnSubFinish7100848")
end

function Quest71008:OnSubStart7100849(arg1)
    print("OnSubStart7100849")
end

function Quest71008:OnSubFinish7100849(arg1)
    print("OnSubFinish7100849")
    self:TransmitPlayerById(arg1, 28)
end

function Quest71008:OnSubStart7100802(arg1)
    print("OnSubStart7100802")
    print("OnSubStart7100802")
    self.BlackScreen(self)
    self.CountDownUIStart(self, 60, 10, 3)
    self.CallDelay(self, 62.8, function()
        self:EnablePlayerInput(false)
        print("TEST InputFalse")
    end)

    self.CallDelay(self, 64, function()
        self:EnablePlayerInput(true)
        print("TEST InputTure")
    end)

    self.UnCallFunc(self, self.CountDown)
    self.CallDelay(self, 64, self.CountDown)
    self.CallDelay(self, 1.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc20129_01.id, 2)
        print("TEST CallDelay")
    end)

    self.TransmitPlayerById(self, arg1, 10)
end

function Quest71008:OnSubFinish7100802(arg1)
    print("OnSubFinish7100802")
end

function Quest71008:OnSubFailed7100802(arg1)
    print("OnSubFailed7100802")
    self:BlackScreen()
    self:CreateQuestNpc(arg1, npcs.Npc20129Begin.id, 1)
    self:TransmitPlayerById(arg1, 1)
end

function Quest71008:OnSubStart7100852(arg1)
    print("OnSubStart7100852")
    actorMgr:CreateActorWithPos("Q7100852Trigger", "Actor/Gadget/Q7100852Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q71008_Afei_01").pos, sceneData:GetDummyPoint(3, "Q71008_Afei_01").rot, true, false, 3)
end

function Quest71008:OnSubFinish7100852(arg1)
    print("OnSubFinish7100852")
end

function Quest71008:OnSubStart7100803(arg1)
    print("OnSubStart7100803")
    self:CountDownClear()
end

function Quest71008:OnSubFinish7100803(arg1)
    print("OnSubFinish7100803")
end

function Quest71008:OnSubStart7100807(arg1)
    print("OnSubStart7100807")
    print("OnSubStart7100807")
    self.BlackScreen(self)
    self.CallDelay(self, 1.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc20129_01.id, 2)
        print("TEST CallDelay")
    end)
end

function Quest71008:OnSubFinish7100807(arg1)
    print("OnSubFinish7100807")
end

function Quest71008:OnSubStart7100834(arg1)
    print("OnSubStart7100834")
    self:CountDownClear()
end

function Quest71008:OnSubFinish7100834(arg1)
    print("OnSubFinish7100834")
end

function Quest71008:OnSubStart7100808(arg1)
    print("OnSubStart7100808")
    print("OnSubStart7100808")
    self.BlackScreen(self)
    self.CountDownUIStart(self, 50, 10, 3)
    self.CallDelay(self, 52.8, function()
        self:EnablePlayerInput(false)
        print("TEST InputFalse")
    end)

    self.CallDelay(self, 54, function()
        self:EnablePlayerInput(true)
        print("TEST InputTure")
    end)

    self.UnCallFunc(self, self.CountDown)
    self.CallDelay(self, 54, self.CountDown)
    self.CallDelay(self, 1.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc20129_02.id, 3)
        print("TEST CallDelay")
    end)

    self.TransmitPlayerById(self, arg1, 11)
end

function Quest71008:OnSubFinish7100808(arg1)
    print("OnSubFinish7100808")
end

function Quest71008:OnSubFailed7100808(arg1)
    print("OnSubFailed7100808")
    self:BlackScreen()
    self:CreateQuestNpc(arg1, npcs.Npc20129_01.id, 2)
    self:TransmitPlayerById(arg1, 2)
end

function Quest71008:OnSubStart7100853(arg1)
    print("OnSubStart7100853")
    actorMgr:CreateActorWithPos("Q7100853Trigger", "Actor/Gadget/Q7100853Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q71008_Afei_01").pos, sceneData:GetDummyPoint(3, "Q71008_Afei_01").rot, true, false, 3)
end

function Quest71008:OnSubFinish7100853(arg1)
    print("OnSubFinish7100853")
end

function Quest71008:OnSubStart7100809(arg1)
    print("OnSubStart7100809")
    self:CountDownClear()
end

function Quest71008:OnSubFinish7100809(arg1)
    print("OnSubFinish7100809")
end

function Quest71008:OnSubStart7100813(arg1)
    print("OnSubStart7100813")
    print("OnSubStart7100813")
    self.BlackScreen(self)
    self.CallDelay(self, 1.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc20129_02.id, 3)
        print("TEST CallDelay")
    end)
end

function Quest71008:OnSubFinish7100813(arg1)
    print("OnSubFinish7100813")
end

function Quest71008:OnSubStart7100835(arg1)
    print("OnSubStart7100835")
    self:CountDownClear()
end

function Quest71008:OnSubFinish7100835(arg1)
    print("OnSubFinish7100835")
end

function Quest71008:OnSubStart7100814(arg1)
    print("OnSubStart7100814")
    print("OnSubStart7100814")
    self.BlackScreen(self)
    self.CountDownUIStart(self, 40, 10, 3)
    self.CallDelay(self, 42.8, function()
        self:EnablePlayerInput(false)
        print("TEST InputFalse")
    end)

    self.CallDelay(self, 44, function()
        self:EnablePlayerInput(true)
        print("TEST InputTure")
    end)

    self.UnCallFunc(self, self.CountDown)
    self.CallDelay(self, 44, self.CountDown)
    self.CallDelay(self, 1.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc20129_03.id, 4)
        print("TEST CallDelay")
    end)

    self.TransmitPlayerById(self, arg1, 12)
end

function Quest71008:OnSubFinish7100814(arg1)
    print("OnSubFinish7100814")
end

function Quest71008:OnSubFailed7100814(arg1)
    print("OnSubFailed7100814")
    self:BlackScreen()
    self:CreateQuestNpc(arg1, npcs.Npc20129_02.id, 3)
    self:TransmitPlayerById(arg1, 3)
end

function Quest71008:OnSubStart7100854(arg1)
    print("OnSubStart7100854")
    actorMgr:CreateActorWithPos("Q7100854Trigger", "Actor/Gadget/Q7100854Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q71008_Afei_01").pos, sceneData:GetDummyPoint(3, "Q71008_Afei_01").rot, true, false, 3)
end

function Quest71008:OnSubFinish7100854(arg1)
    print("OnSubFinish7100854")
end

function Quest71008:OnSubStart7100815(arg1)
    print("OnSubStart7100815")
    self:CountDownClear()
end

function Quest71008:OnSubFinish7100815(arg1)
    print("OnSubFinish7100815")
end

function Quest71008:OnSubStart7100819(arg1)
    print("OnSubStart7100819")
    print("OnSubStart7100819")
    self.BlackScreen(self)
    self.CallDelay(self, 1.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc20129_03.id, 4)
        print("TEST CallDelay")
    end)
end

function Quest71008:OnSubFinish7100819(arg1)
    print("OnSubFinish7100819")
end

function Quest71008:OnSubStart7100836(arg1)
    print("OnSubStart7100836")
    self:CountDownClear()
end

function Quest71008:OnSubFinish7100836(arg1)
    print("OnSubFinish7100836")
end

function Quest71008:OnSubStart7100820(arg1)
    print("OnSubStart7100820")
    print("OnSubStart7100820")
    self.BlackScreen(self)
    self.CountDownUIStart(self, 30, 5, 3)
    self.CallDelay(self, 32.8, function()
        self:EnablePlayerInput(false)
        print("TEST InputFalse")
    end)

    self.CallDelay(self, 34, function()
        self:EnablePlayerInput(true)
        print("TEST InputTure")
    end)

    self.UnCallFunc(self, self.CountDown)
    self.CallDelay(self, 34, self.CountDown)
    self.CallDelay(self, 1.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc20129_04.id, 5)
        print("TEST CallDelay")
    end)

    self.TransmitPlayerById(self, arg1, 13)
end

function Quest71008:OnSubFinish7100820(arg1)
    print("OnSubFinish7100820")
end

function Quest71008:OnSubFailed7100820(arg1)
    print("OnSubFailed7100820")
    self:BlackScreen()
    self:CreateQuestNpc(arg1, npcs.Npc20129_03.id, 4)
    self:TransmitPlayerById(arg1, 4)
end

function Quest71008:OnSubStart7100855(arg1)
    print("OnSubStart7100855")
    actorMgr:CreateActorWithPos("Q7100855Trigger", "Actor/Gadget/Q7100855Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q71008_Afei_01").pos, sceneData:GetDummyPoint(3, "Q71008_Afei_01").rot, true, false, 3)
end

function Quest71008:OnSubFinish7100855(arg1)
    print("OnSubFinish7100855")
end

function Quest71008:OnSubStart7100821(arg1)
    print("OnSubStart7100821")
    self:CountDownClear()
end

function Quest71008:OnSubFinish7100821(arg1)
    print("OnSubFinish7100821")
end

function Quest71008:OnSubStart7100825(arg1)
    print("OnSubStart7100825")
    print("OnSubStart7100825")
    self.BlackScreen(self)
    self.CallDelay(self, 1.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc20129_04.id, 5)
        print("TEST CallDelay")
    end)
end

function Quest71008:OnSubFinish7100825(arg1)
    print("OnSubFinish7100825")
end

function Quest71008:OnSubStart7100832(arg1)
    print("OnSubStart7100832")
    self:CountDownClear()
end

function Quest71008:OnSubFinish7100832(arg1)
    print("OnSubFinish7100832")
    self:BlackScreen()
    self:DestroyQuestNpcActor(npcs.Npc20129_04.alias, 3)
end

function Quest71008:OnSubStart7100826(arg1)
    print("OnSubStart7100826")
    self:BlackScreen()
    self:CountDownUIStart(30, 5, 3)
    self:CallDelay(34, self.CountDown)
    self:GetQuestNpcActor(""):SetPos(sceneData:GetDummyPoint(3, "Q71008_Afei_05").pos, false)
end

function Quest71008:OnSubFinish7100826(arg1)
    print("OnSubFinish7100826")
end

function Quest71008:OnSubStart7100827(arg1)
    print("OnSubStart7100827")
    self:BlackScreen()
    self:TransmitPlayer(3, sceneData:GetDummyPoint(3, "Q71008_Player_04").pos, sceneData:GetDummyPoint(3, "Q71008_Player_04").rot)
    self:GetQuestNpcActor(""):SetPos(sceneData:GetDummyPoint(3, "Q71008_Afei_04").pos, false)
end

function Quest71008:OnSubFinish7100827(arg1)
    print("OnSubFinish7100827")
end

function Quest71008:OnSubStart7100828(arg1)
    print("OnSubStart7100828")
end

function Quest71008:OnSubFinish7100828(arg1)
    print("OnSubFinish7100828")
end

function Quest71008:OnSubStart7100829(arg1)
    print("OnSubStart7100829")
end

function Quest71008:OnSubFinish7100829(arg1)
    print("OnSubFinish7100829")
end

function Quest71008:OnSubStart7100830(arg1)
    print("OnSubStart7100830")
end

function Quest71008:OnSubFinish7100830(arg1)
    print("OnSubFinish7100830")
end

function Quest71008:OnSubStart7100831(arg1)
    print("OnSubStart7100831")
    self:BlackScreen()
    self:GetQuestNpcActor(""):SetPos(sceneData:GetDummyPoint(3, "Q71008_Afei_05").pos, false)
end

function Quest71008:OnSubFinish7100831(arg1)
    print("OnSubFinish7100831")
end

function Quest71008:OnSubStart7100833(arg1)
    print("OnSubStart7100833")
end

function Quest71008:OnSubFinish7100833(arg1)
    print("OnSubFinish7100833")
end

function Quest71008:OnSubStart7100837(arg1)
    print("OnSubStart7100837")
end

function Quest71008:OnSubFinish7100837(arg1)
    print("OnSubFinish7100837")
    self:BlackScreen()
    self:GetQuestNpcActor(""):SetPos(sceneData:GetDummyPoint(3, "Q71008_Afei_Route5").pos, false)
    actorMgr:DestroyEntityActor(datas.Q7100852Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q7100853Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q7100854Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q7100855Trigger_.alias, 3, false)
end

return Quest71008
